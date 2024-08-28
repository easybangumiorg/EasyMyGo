import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/inner/inner_source.dart';
import 'package:easy_mygo/utils/file_index/file_index_utils.dart';
import 'package:path/path.dart';

class ExtensionUtils {
  static const extensionRootPath = "extension";

  /// <application dir>/extension/<load type>/<package>
  static Future<String> getFolder(
      ExtensionLoaderType loaderType, String package) async {
    final applicationDir = await EasyConstant.applicationPath;
    return join(
        applicationDir.path, extensionRootPath, loaderType.name, package);
  }

  static Future<String> getInnerFolder() async {
    return await getFolder(
        ExtensionLoaderType.inner, InnerSourceFactory.innerExtensionPackage);
  }

  static Future<bool> checkExtensionFolder(String path) async {
    return await FileIndexUtils.checkPath(path);
  }
}
