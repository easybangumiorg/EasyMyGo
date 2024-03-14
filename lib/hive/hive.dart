import 'package:hive/hive.dart';

class HiveBox {
  static Future<LazyBox<Map<String, Object?>>> config() =>
      Hive.openLazyBox("config");
}




