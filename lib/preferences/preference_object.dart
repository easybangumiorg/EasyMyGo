import 'package:easy_mygo/preferences/preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class PrefConfig<T> {
  final String _key;
  final T _def;

  static BoolPrefConfig ofBool(String key, bool def) {
    return BoolPrefConfig(key, def);
  }

  static StringPrefConfig ofString(String key, String def) {
    return StringPrefConfig(key, def);
  }

  static IntPrefConfig ofInt(String key, int def) {
    return IntPrefConfig(key, def);
  }

  static DoublePrefConfig ofDouble(String key, double def) {
    return DoublePrefConfig(key, def);
  }

  static StringListPrefConfig ofStringList(String key, List<String> def) {
    return StringListPrefConfig(key, def);
  }

  PrefConfig(this._key, this._def);

  T watch(Ref ref);

  T read(Ref ref);

  T get();

  Future<bool> set(T value);
}

class StringPrefConfig extends PrefConfig<String> {
  StringPrefConfig(super.key, super.def);

  @override
  String get() {
    return Preferences.current.getString(_key) ?? _def;
  }

  @override
  String read(Ref ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if (o is String) {
      return o;
    }
    return _def;
  }

  @override
  Future<bool> set(String value) {
    return Preferences.current.setString(_key, value);
  }

  @override
  String watch(Ref<Object?> ref) {
    final o = ref.watch(preferencesPod.select((value) => value[_key]))??_def;
    if (o is String) {
      return o;
    }
    return _def;
  }

}

class IntPrefConfig extends PrefConfig<int> {
  IntPrefConfig(super.key, super.def);

  @override
  int get() {
    return Preferences.current.getInt(_key) ?? _def;
  }

  @override
  int read(Ref ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if(o is int){
      return o;
    }
    return _def;
  }

  @override
  Future<bool> set(int value) {
    return Preferences.current.setInt(_key, value);
  }

  @override
  int watch(Ref<Object?> ref) {
    final o = ref.watch(preferencesPod.select((value) => value[_key]))??_def;
    if(o is int){
      return o;
    }
    return _def;
  }
}

class DoublePrefConfig extends PrefConfig<double> {
  DoublePrefConfig(super.key, super.def);

  @override
  double get() {
    return Preferences.current.getDouble(_key) ?? _def;
  }

  @override
  double read(Ref ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if(o is double){
      return o;
    }
    return _def;
  }

  @override
  Future<bool> set(double value) {
    return Preferences.current.setDouble(_key, value);
  }

  @override
  double watch(Ref ref) {
    final o = ref.watch(preferencesPod.select((value) => value[_key]))??_def;
    if(o is double){
      return o;
    }
    return _def;
  }


}

class BoolPrefConfig extends PrefConfig<bool> {
  BoolPrefConfig(super.key, super.def);

  @override
  bool get() {
    return Preferences.current.getBool(_key) ?? _def;
  }

  @override
  bool read(Ref ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if(o is bool){
      return o;
    }
    return _def;
  }

  @override
  Future<bool> set(bool value) {
    return Preferences.current.setBool(_key, value);
  }

  @override
  bool watch(Ref<Object?> ref) {
    final o = ref.watch(preferencesPod.select((value) => value[_key]))??_def;
    if(o is bool){
      return o;
    }
    return _def;
  }


}

class StringListPrefConfig extends PrefConfig<List<String>> {
  StringListPrefConfig(super.key, super.def);

  @override
  List<String> get() {
    return Preferences.current.getStringList(_key) ?? _def;
  }

  @override
  List<String> read(Ref ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if(o is List<String>){
      return o;
    }
    return _def;
  }

  @override
  Future<bool> set(List<String> value) {
    return Preferences.current.setStringList(_key, value);
  }

  @override
  List<String> watch(Ref<Object?> ref) {
    final o = ref.read(preferencesPod.select((value) => value[_key]))??_def;
    if(o is List<String>){
      return o;
    }
    return _def;
  }


}