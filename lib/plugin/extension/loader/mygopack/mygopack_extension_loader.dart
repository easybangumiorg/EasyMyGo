import 'dart:convert';
import 'dart:io';

import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/extension/utils/extension_utils.dart';
import 'package:archive/archive_io.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';
import 'package:easy_mygo/utils/file_index/file_index_utils.dart';
import 'package:path/path.dart';

import 'manifest/mygopack_manifest_info.dart';

class MygopackExtensionLoader extends ExtensionLoader {
  static const manifestFileName = "manifest.json";
  static const assetsFolderName = "assets";

  @override
  ExtensionLoaderType get type => ExtensionLoaderType.mygopack;

  @override
  Future<ExtensionData?> load(ExtensionInfo extensionInfo) async {
    final path = await ExtensionUtils.getFolder(
        extensionInfo.loadType, extensionInfo.package);
    final dir = Directory(path).absolute; // 这里取绝对路径

    // 1.解压
    final unzipResult = await _unzip(extensionInfo, dir);
    if (unzipResult == 2) {
      return ExtensionData(
          info: extensionInfo,
          folderPath: dir.path,
          state: ExtensionState.error,
          errorMsg: "解压失败或文件不存在");
    }

    // 2.解析清单文件并检查
    final manifest = await _parseManifest(dir);

    if (manifest == null || !_match(manifest, extensionInfo)) {
      // 如果是跳过解压的允许重新解压加载一次
      if (unzipResult == 1) {
        await dir.delete(recursive: true);
        return await load(extensionInfo);
      }
    }

    final assetsPath = join(path, assetsFolderName);
    // 3.解析 SourceInfo
    // 一个文件夹代表一种 LoaderType
    final List<SourceInfo> sourceList = [];

    final folderList =
        await dir.list(recursive: false, followLinks: false).toList();
    for (var value in folderList) {
      if (!await FileSystemEntity.isDirectory(value.path)) {
        continue;
      }
      final d = Directory(value.path);
      final name = basename(value.path);
      if (name == assetsFolderName) {
        continue;
      }
      final loader = SourceLoader.ofName(name);
      if (loader == null) {
        continue;
      }

      final fileList =
          await d.list(recursive: false, followLinks: false).toList();
      for (var value1 in fileList) {
        if (!await FileSystemEntity.isFile(value1.path)) {
          continue;
        }
        var sourceInfo =
            await loader.parse(extensionInfo.package, value1.absolute.path);
        if (sourceInfo == null) {
          continue;
        }

        if (!sourceInfo.header.startsWith("https://") &&
            !sourceInfo.header.startsWith("http://") &&
            sourceInfo.header.isNotEmpty
        ) {
          sourceInfo = sourceInfo.copyWith(
            header: join(assetsPath, sourceInfo.header)
          );
        }
        sourceList.add(sourceInfo);
      }
    }


    return ExtensionData(info: extensionInfo, folderPath: path, sources: sourceList);
  }

  /// 0->解压成功 1->文件检查成功跳过解压 2->解压失败
  Future<int> _unzip(ExtensionInfo extensionInfo, Directory folder) async {
    final path = folder.path;
    try {
      if (!await folder.exists() ||
          !await ExtensionUtils.checkExtensionFolder(path)) {
        // 先删除
        if (await folder.exists()) {
          folder.delete(recursive: true);
        }

        // mkdirs
        folder.create(recursive: true);

        // 1.解压
        final file = File(extensionInfo.path);
        if (!await file.exists()) {
          return 2;
        }
        final stream = InputFileStream(file.path);
        final archive = ZipDecoder().decodeBuffer(stream);
        for (var value in archive) {
          if (value.isFile) {
            final data = value.content as List<int>;
            await File(join(path, value.name)).writeAsBytes(data, flush: true);
          } else {
            await Directory(join(path, value.name)).create(
              recursive: true,
            );
          }
        }
        FileIndexUtils.updateIndex(path);
        return 0;
      }
      return 1;
    } catch (e) {
      return 2;
    }
  }

  Future<MygoPackManifest?> _parseManifest(Directory folder) async {
    final file = File(join(folder.path, manifestFileName));
    if (!await file.exists()) {
      return null;
    }
    final content = await file.readAsString();
    final json = jsonDecode(content);
    if (json == null) {
      return null;
    }
    try {
      return MygoPackManifest.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  bool _match(MygoPackManifest manifest, ExtensionInfo info) {
    return manifest.package == info.package &&
        manifest.versionCode == info.versionCode &&
        manifest.libVersion == info.libVersion;
  }

  @override
  Future<ExtensionInfo?> parse(String file) {
    // TODO: implement parse
    throw UnimplementedError();
  }
}
