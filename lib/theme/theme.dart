import 'package:easy_mygo/hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../hive/config/hive_config.dart';

part 'theme.g.dart';

part 'theme.freezed.dart';

@freezed
class ThemeConfig with _$ThemeConfig {
  factory ThemeConfig({
    @Default(0) int seedColorIndex,
    @Default(0) int darkModeIndex,
  }) = _ThemeConfig;

  factory ThemeConfig.fromJson(Map<String, Object?> json) =>
      _$ThemeConfigFromJson(json);
}


@riverpod
class ThemeController extends _$ThemeController {

  @override
  ThemeConfig build() {
    final hiveConfig = ref.watch(HiveConfigProvider("theme_config"));
    final value = hiveConfig.valueOrNull;
    if (value != null) {
      return ThemeConfig.fromJson(value);
    } else {
      return ThemeConfig();
    }
  }


  void changeThemeIndex(int index) async {
    HiveConfig.put("theme_config", state.copyWith(seedColorIndex: index).toJson());
  }


}
