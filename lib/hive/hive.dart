import 'dart:async';

import 'package:easy_mygo/c.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart';

class HiveBox {

  static var completer = Completer();

  static final init = Future(() async {
    final applicationDir = await Constant.applicationPath;
    Hive.init(join(applicationDir.path, "hive"));
  });

  static String key = "Mygo_single_key";

  static Future<LazyBox<Map<String, dynamic>>> themeConfig() async {
    await init;
    return Hive.openLazyBox<Map<String, dynamic>>("theme_config");
  }

}

extension BoxExt<E> on Box<E> {

  E? getSingle({E? defaultValue}) => get(HiveBox.key, defaultValue: defaultValue);
  void putSingle(E value) => put(HiveBox.key, value);
}

extension LazyBoxExt<E> on LazyBox<E> {
  Future<E?> getSingle({E? defaultValue}) => get(HiveBox.key, defaultValue: defaultValue);
  Future<void> putSingle(E value) => put(HiveBox.key, value);
}




