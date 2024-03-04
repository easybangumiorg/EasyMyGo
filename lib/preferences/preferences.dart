import 'package:easy_book/global/global.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preferences.freezed.dart';

part 'preferences.g.dart';

@freezed
class PreferenceState with _$PreferenceState {
  factory PreferenceState({
    // 主题下标
    required int themeIndex,

    // 夜间模式状态 0:auto 1:off 2:on
    required int darkMode,
  }) = _PreferenceState;

  factory PreferenceState.fromJson(Map<String, Object?> json) =>
      _$PreferenceStateFromJson(json);
}

@riverpod
class PreferencesController extends _$PreferencesController {
  @override
  PreferenceState build() {
    final gs = global;
    if (gs == null) {
      return PreferenceState(
        themeIndex: 0,
        darkMode: 0,
      );
    } else {
      final sp = gs.preferences;
      return PreferenceState(
        themeIndex: sp.getInt("themeIndex") ?? 0,
        darkMode: sp.getInt("darkMode") ?? 0,
      );
    }
  }

  Future<bool> setThemeIndex(int themeIndex) async {
    state = state.copyWith(
      themeIndex: themeIndex,
    );
    final sp = global?.preferences;
    return await sp?.setInt("themeIndex", themeIndex) ?? false;
  }

  Future<bool> setDarkMode(int darkMode) async {
    state = state.copyWith(darkMode: darkMode);
    final sp = global?.preferences;
    return await sp?.setInt("darkMode", darkMode) ?? false;
  }
}
