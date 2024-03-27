
import 'dart:convert';
import 'dart:io';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/utils/file_index/file_index_utils.dart';
import 'package:path/path.dart';

class ExtensionUtils {

  static const extensionRootPath = "extension";

  /// <application dir>/extension/<load type>/<package>
  static Future<String> getFolder(ExtensionLoaderType loaderType, String package) async {
    final applicationDir = await EasyConstant.applicationPath;
    return join(applicationDir.path, extensionRootPath, package);
  }

  static Future<bool> checkExtensionFolder(String path) async {
    return await FileIndexUtils.checkPath(path);
  }

}