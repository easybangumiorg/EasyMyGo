import 'package:easy_mygo/preferences/preferences.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';
part 'theme.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState({
    required MaterialColor seedColor,
    required int darkMode,
  }) = _ThemeState;
}


@riverpod
class ThemeController extends _$ThemeController {

  static const List<MaterialColor> themeSeedColor = Colors.primaries;

  @override
  ThemeState build() {
    final darkMode = ref.watch(preferencesControllerProvider.select((value) => value.darkMode));
    final index = ref.watch(preferencesControllerProvider.select((value) => value.themeIndex));
    return ThemeState(seedColor: _getSeedColor(index), darkMode: darkMode);
  }

  MaterialColor _getSeedColor(int index) {
    if (index < 0 || index >= themeSeedColor.length) {
      return themeSeedColor[0];
    }else{
      return themeSeedColor[index];
    }
  }
}

