
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class EasyConstant {
  static const versionName = String.fromEnvironment("VERSION_NAME", defaultValue: "dev");
  static final versionCode = int.tryParse(const String.fromEnvironment("VERSION_CODE", defaultValue: "0")) ?? 0;

  static final applicationPath = Future(() async {
    final rootPath = await getApplicationSupportDirectory();
    final dir =  Directory(join(rootPath.absolute.path, "files"));
    await dir.create(recursive: true);
    return dir;
  });

  static final tempPath = Future(() async {
    final rootPath = await getApplicationSupportDirectory();
    final dir =  Directory(join(rootPath.absolute.path, "temp"));
    await dir.create(recursive: true);
    return dir;
  });

  static final cachePath = Future(() async {
    final rootPath = await getApplicationSupportDirectory();
    final dir =  Directory(join(rootPath.absolute.path, "cache"));
    await dir.create(recursive: true);
    return dir;
  });
}
