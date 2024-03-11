import 'dart:collection';

import 'package:easy_mygo/preferences/preference_object.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'preferences.g.dart';

class Pref {

  static final themeIndex = PrefConfig.ofInt("themeIndex", 0);

  // 0->system 1->light ->dark
  static final darkMode = PrefConfig.ofInt("darkMode", 0);

}


@Riverpod(keepAlive: true)
class Preferences extends _$Preferences {

  static Preferences? _current;
  static Preferences get current {
    assert(_current != null,
    'No instance of Preferences was loaded. It cant use before init.');
    return _current!;
  }

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

  Set<String> getKeys() => Set<String>.from(state.keys);

  Object? get(String key) => state[key];
  bool? getBool(String key) => state[key] as bool?;
  int? getInt(String key) => state[key] as int?;
  double? getDouble(String key) => state[key] as double?;
  String? getString(String key) => state[key] as String?;

  List<String>? getStringList(String key) {
    List<dynamic>? list = state[key] as List<dynamic>?;
    if (list != null && list is! List<String>) {
      list = list.cast<String>().toList();
      state[key] = list;
    }
    // Make a copy of the list so that later mutations won't propagate
    return list?.toList() as List<String>?;
  }

  bool containsKey(String key) =>
      _sharedPreferences?.containsKey(key) ?? false;



  Future<bool> setBool(String key, bool value) async {
    final Map<String, Object> map = Map.from(state);
    map[key] = value;
    state = map;
    return await _sharedPreferences?.setBool(key, value) ?? false;
  }

  Future<bool> setInt(String key, int value) async {
    final Map<String, Object> map = Map.from(state);
    map[key] = value;
    state = map;
    return await _sharedPreferences?.setInt(key, value) ?? false;
  }

  Future<bool> setDouble(String key, double value) async {
    final Map<String, Object> map = Map.from(state);
    map[key] = value;
    state = map;
    return await _sharedPreferences?.setDouble(key, value) ?? false;
  }

  Future<bool> setString(String key, String value) async {
    final Map<String, Object> map = Map.from(state);
    map[key] = value;
    state = map;
    return await _sharedPreferences?.setString(key, value) ?? false;
  }

  Future<bool> setStringList(String key, List<String> value) async {
    final Map<String, Object> map = Map.from(state);
    map[key] = value;
    state = map;
    return await _sharedPreferences?.setStringList(key, value) ?? false;
  }

  Future<bool> remove(String key) async {
    final Map<String, Object> map = Map.from(state);
    map.remove(key);
    state = map;
    return await _sharedPreferences?.remove(key) ?? false;
  }

  Future<bool> clear() async {
    state = {};
    return await _sharedPreferences?.clear() ?? false;
  }

  Future<void> reload() async {
    await _sharedPreferences?.reload();
    update();
  }


}
