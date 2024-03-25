
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


@Riverpod()
class ThemeNotifier extends _$ThemeNotifier {

  late Future<void> _init;

  @override
  ThemeConfig build() {
    ref.onResume(() {
      _init = Future.microtask((){
        _innerInit();
      });
    });


    return ThemeConfig.none;
  }

  Future<void> _innerInit() async {
    final box = await HiveBox.themeConfig();
    final themeMap = await box.getSingle() ?? {};
    final themeConfig = ThemeConfig.fromJson(themeMap);
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
