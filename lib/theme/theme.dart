
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/hive/hive.dart';
import '../utils/riverpod/mutable_notifier.dart';



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

final themeControllerPod = Provider((ref) => ThemeController._(ref));
class ThemeController {

  final ProviderRef _ref;
  final config = mutableNotifier(ThemeConfig.none);
  late Future<void> _init;

  ThemeController._(this._ref){
    _init = Future(() async {
      final box = await HiveBox.themeConfig();
      final themeMap = await box.getSingle() ?? {};
      final themeConfig = ThemeConfig.fromJson(themeMap);
      config.update(_ref, (p0) => themeConfig);
      await box.close();
    });
  }


  Future<void> setTheme(int index) async {
    await _init;
    final box = await HiveBox.themeConfig();
    final curConfig = _ref.read(config);
    final newConfig = curConfig.copyWith(seedColorIndex: index);
    config.update(_ref, (p0) => newConfig);
    await box.putSingle(newConfig.toJson());
    await box.close();
  }

  Future<void> setDarkMode(int mode) async {
    await _init;
    final box = await HiveBox.themeConfig();
    final curConfig = _ref.read(config);
    final newConfig = curConfig.copyWith(darkModeIndex: mode);
    config.update(_ref, (p0) => newConfig);
    await box.putSingle(newConfig.toJson());
    await box.close();
  }

}