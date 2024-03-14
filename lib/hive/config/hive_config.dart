

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../hive.dart';

part 'hive_config.g.dart';


@riverpod
class HiveConfig extends _$HiveConfig {

  static void put(String key, Map<String, Object?> json) async {
    final box = await HiveBox.config();
    box.put(key, json);
  }


  @override
  Stream<Map<String, Object?>> build(String key) async* {
    final box = await HiveBox.config();
    yield* box.watch(key: key).map((event) {
      if (!event.deleted && event.value is Map<String, Object?>) {
        return event.value as Map<String, Object?>;
      } else {
        return {};
      }
    });
  }

}