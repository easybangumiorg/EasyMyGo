import 'package:easy_mygo/ui/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../hive/hive.dart';

part 'theme.g.dart';

part 'theme.freezed.dart';

@freezed
class ThemeConfig with _$ThemeConfig {

  static ThemeConfig none = ThemeConfig(seedColorIndex: -1, darkModeIndex: -1);

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
  ThemeConfig build() => ThemeConfig.none;

  Future<void> init() async {
    if (state != ThemeConfig.none){
      return;
    }
    final box = await HiveBox.themeConfig();
    final themeMap = await box.getSingle() ?? {};
    final themeConfig = ThemeConfig.fromJson(themeMap);
    state = themeConfig;
  }

  Future<void> setTheme(int index) async {
    final box = await HiveBox.themeConfig();
    final newConfig = state.copyWith(seedColorIndex: index);
    state = newConfig;
    await box.putSingle(newConfig.toJson());
  }

  Future<void> setDarkMode(int mode) async {
    final box = await HiveBox.themeConfig();
    final newConfig = state.copyWith(darkModeIndex: mode);
    state = newConfig;
    await box.putSingle( newConfig.toJson());
  }

}
