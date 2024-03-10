import 'dart:collection';

import 'package:easy_mygo/preferences/preference_object.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences.g.dart';

class Pref {

  static final themeIndex = PrefConfig.ofInt("themeIndex", 0);
  static final darkMode = PrefConfig.ofInt("darkMode", 0);

}


@Riverpod(keepAlive: true)
class Preferences extends _$Preferences {

  SharedPreferences? _sharedPreferences;

  @override
  Map<String, Object> build() {

    return {};
  }

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    update();
  }

  void update() {
    final sp = _sharedPreferences;
    if (sp == null) {
      return;
    }
    final map = HashMap<String, Object>();
    sp.getKeys().forEach((element) {
      final value = sp.get(element);
      if (value != null) {
        map[element] = value;
      }
    });
    state = map;
  }

  Set<String> getKeys() => _sharedPreferences?.getKeys() ?? {};

  Object? get(String key) => _sharedPreferences?.get(key);
  bool? getBool(String key) => _sharedPreferences?.getBool(key);
  int? getInt(String key) => _sharedPreferences?.getInt(key);
  double? getDouble(String key) => _sharedPreferences?.getDouble(key);
  String? getString(String key) => _sharedPreferences?.getString(key);
  List<String>? getStringList(String key) => _sharedPreferences?.getStringList(key);

  bool containsKey(String key) =>
      _sharedPreferences?.containsKey(key) ?? false;



  Future<bool> setBool(String key, bool value) async {
    final res = await _sharedPreferences?.setBool(key, value) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> setInt(String key, int value) async {
    final res = await _sharedPreferences?.setInt(key, value) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> setDouble(String key, double value) async {
    final res = await _sharedPreferences?.setDouble(key, value) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> setString(String key, String value) async {
    final res = await _sharedPreferences?.setString(key, value) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> setStringList(String key, List<String> value) async {
    final res =
        await _sharedPreferences?.setStringList(key, value) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> remove(String key) async {
    final res = await _sharedPreferences?.remove(key) ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<bool> clear() async {
    final res = await _sharedPreferences?.clear() ?? false;
    if (res) {
      update();
    }
    return res;
  }

  Future<void> reload() async {
    await _sharedPreferences?.reload();
    update();
  }


}
