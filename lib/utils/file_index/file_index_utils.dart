import 'dart:convert';
import 'dart:io';

import 'package:easy_mygo/utils/file_index/item/file_index_item.dart';
import 'package:path/path.dart';

class FileIndexUtils {
  static const indexFileName = "._mygo_index_file.json";

  /// 生成一个文件夹的清单文件
  static Future<void> updateIndex(String path) async {
    final dir = Directory(path);
    if (!await dir.exists()) {
      return;
    }

    /// 删除清单文件
    final indexFile = File(join(path, indexFileName));
    if (await indexFile.exists()) {
      indexFile.delete();
    }

    final List<FileIndexItem> indexList = [];

    final slideSize = split(path).length;
    final list = await dir.list(recursive: true, followLinks: false).toList();
    for (var value in list) {
      final absPath = value.absolute.path;
      if(! await FileSystemEntity.isFile(absPath)){
        continue;
      }
      final file = File(absPath);
      final size = await file.length();
      final absPathLoad = split(absPath);

      /// 取相对路径
      if (slideSize < absPathLoad.length){
        final pathLoad = absPathLoad.sublist(slideSize);
        indexList.add(FileIndexItem(path: pathLoad, size: size));
      }
    }

    final content = jsonEncode(indexList.map((e) => e.toJson()));
    await indexFile.create();
    await indexFile.writeAsString(content);
  }

  /// 判断一个文件夹里的文件从上次调用 updateIndex 到现在有没有动过
  static Future<bool> checkPath(String path) async {
    final dir = Directory(path);
    if (!await dir.exists()) {
      return false;
    }

    /// 清单文件
    final indexFile = File(join(path, indexFileName));
    if (!await indexFile.exists()){
      return false;
    }

    final content = await indexFile.readAsString();
    List<Map<String, dynamic>> jsonList = jsonDecode(content);
    final indexList = jsonList.map((e) => FileIndexItem.fromJson(e));
    for (var value in indexList) {
      final p = join(path, joinAll(value.path));
      final file = File(p);

      /// 文件被删了，验证不通过
      if(! await file.exists() && value.size > 0){
        return false;
      }

      final size = await file.length();

      /// 文件被修改（大小变化），验证不通过
      if (size != value.size){
        return false;
      }
    }
    return true;
  }
}
