import 'dart:convert';

import 'package:easy_mygo/utils/hive/hive.dart';
import 'package:easy_mygo/utils/json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


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

@Riverpod()
class ThemeController extends _$ThemeController {

  static ThemeController of(WidgetRef ref) =>
      ref.watch(themeControllerPod.notifier);

  static ThemeConfig watch(WidgetRef ref) =>
      ref.watch(themeControllerPod);

  late Future<void> _init;

  ThemeController(){
    _init = Future.microtask(() {
      _innerInit();
    });
  }

  @override
  ThemeConfig build() {
    return ThemeConfig.none;
  }

  Future<void> _innerInit() async {
    final box = await HiveBox.themeConfig();
    final themeMapJson = await box.getSingle();

    final themeConfig = ThemeConfig.fromJson((themeMapJson ?? {}).cast());
    state = themeConfig;
    await box.close();
  }

  Future<void> setTheme(int index) async {
    await _init;
    final box = await HiveBox.themeConfig();
    final newConfig = state.copyWith(seedColorIndex: index);
    state = newConfig;
    await box.putSingle(newConfig.toJson());
    await box.close();
  }

  Future<void> setDarkMode(int mode) async {
    await _init;
    final box = await HiveBox.themeConfig();
    final newConfig = state.copyWith(darkModeIndex: mode);
    state = newConfig;
    await box.putSingle(newConfig.toJson());
    await box.close();
  }
}
