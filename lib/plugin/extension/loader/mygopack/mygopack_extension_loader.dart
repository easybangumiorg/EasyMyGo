import 'dart:convert';
import 'dart:io';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/extension/utils/extension_utils.dart';
import 'package:archive/archive_io.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';
import 'package:easy_mygo/utils/file_index/file_index_utils.dart';
import 'package:easy_mygo/utils/zip/zip_utils.dart';
import 'package:path/path.dart';

import 'manifest/mygopack_manifest_info.dart';

class MygopackExtensionLoader extends ExtensionLoader {
  static const manifestFileName = "manifest.json";
  static const assetsFolderName = "assets";

  @override
  ExtensionLoaderType get type => ExtensionLoaderType.mygopack;

  // load ============================================================

  /// 加载 mygopack，这里会将插件包解压到软件插件目录
  @override
  Future<ExtensionData?> load(ExtensionInfo extensionInfo) async {
    final path = await ExtensionUtils.getFolder(
        extensionInfo.loadType, extensionInfo.package);
    final dir = Directory(path).absolute; // 这里取绝对路径

    // 版本检查
    if (extensionInfo.libVersion < ExtensionLoader.libVersionMin ) {
      return ExtensionData(
          info: extensionInfo,
          folderPath: dir.path,
          state: ExtensionState.error,
          errorMsg: "插件版本过旧！");
    }
    if (extensionInfo.libVersion > ExtensionLoader.libVersionMax ) {
      return ExtensionData(
          info: extensionInfo,
          folderPath: dir.path,
          state: ExtensionState.error,
          errorMsg: "纯纯 Mygo 版本过旧，请升级版本！");
    }

    // 1.解压
    final (unzipResult, errorMsg) = await _loadUnzip(extensionInfo, dir);
    if (unzipResult == 2) {
      return ExtensionData(
          info: extensionInfo,
          folderPath: dir.path,
          state: ExtensionState.error,
          errorMsg: errorMsg ?? "解压失败或文件不存在");
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

    try {
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
              sourceInfo.header.isNotEmpty) {
            sourceInfo = sourceInfo.copyWith(
                header: join(assetsPath, sourceInfo.header));
          }
          sourceList.add(sourceInfo);
        }
      }

      return ExtensionData(
          info: extensionInfo, folderPath: path, sources: sourceList);
    } catch (e) {
      return ExtensionData(
          info: extensionInfo,
          folderPath: dir.path,
          state: ExtensionState.error,
          errorMsg: e.toString());
    }
  }

  // parse ============================================================

  /// 解析一个 mygopack 文件的元数据，这里只会解压到临时目录，最终加载需要再次解压
  @override
  Future<ExtensionInfo?> parse(String file) async {
    File f = File(file);
    if (!await f.exists()) {
      return null;
    }
    // 后缀检查
    if (!f.path.endsWith(".mygopack")) {
      return null;
    }
    final temp = await EasyConstant.tempPath;
    final mygoPackTemp = Directory(join(temp.path, "mygo_pack"));
    if (await mygoPackTemp.exists()) {
      await mygoPackTemp.delete(recursive: true);
    }
    // 解压到临时目录
    final res = await ZipUtils.unzip(file, mygoPackTemp.path);
    if (!res) {
      return null;
    }
    // 解析清单文件并检查
    final manifest = await _parseManifest(mygoPackTemp);
    if (manifest == null) {
      return null;
    }
    // 打包元数据
    return ExtensionInfo(
        package: manifest.package,
        label: manifest.label,
        versionName: manifest.versionName,
        versionCode: manifest.versionCode,
        libVersion: manifest.libVersion,
        loadType: ExtensionLoaderType.mygopack,
        path: file);
  }

  /// 0->解压成功 1->文件检查成功跳过解压 2->解压失败
  Future<(int, String?)> _loadUnzip(
      ExtensionInfo extensionInfo, Directory folder) async {
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
          return (2, "文件不存在");
        }

        final res = await ZipUtils.unzip(file.path, folder.path);
        if (res) {
          FileIndexUtils.updateIndex(path);
          return (0, null);
        } else {
          return (2, "解压失败");
        }
      }
      return (1, null);
    } catch (e) {
      return (2, e.toString());
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
}
