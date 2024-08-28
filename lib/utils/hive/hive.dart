import 'dart:async';

import 'package:easy_mygo/c.dart';
import 'package:hive_ce/hive.dart';
import 'package:path/path.dart';

class HiveBox {
  static final init = Future(() async {
    final applicationDir = await EasyConstant.applicationPath;
    Hive.init(join(applicationDir.path, "hive"));
  });

  static String key = "Mygo_single_key";

  static Future<LazyBox<Map>> themeConfig() async {
    await init;
    return Hive.openLazyBox<Map>("theme_config");
  }

  static Future<LazyBox<Map>> sourceConfig() async {
    await init;
    return Hive.openLazyBox<Map>("source_config");
  }

  static Future<LazyBox<Map>> config() async {
    await init;
    return Hive.openLazyBox<Map>("config");
  }
}

extension BoxExt<E> on Box<E> {
  E? getSingle({E? defaultValue}) =>
      get(HiveBox.key, defaultValue: defaultValue);
  void putSingle(E value) => put(HiveBox.key, value);
}

extension LazyBoxExt<E> on LazyBox<E> {
  Future<E?> getSingle({E? defaultValue}) =>
      get(HiveBox.key, defaultValue: defaultValue);
  Future<void> putSingle(E value) => put(HiveBox.key, value);
}
