import 'package:easy_mygo/preferences/preferences.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


abstract class PrefConfig<T> {
  final String _key;
  final T _def;

  static BoolPrefConfig ofBool(String key, bool def){
    return BoolPrefConfig(key, def);
  }

  static StringPrefConfig ofString(String key, String def){
    return StringPrefConfig(key, def);
  }

  static IntPrefConfig ofInt(String key, int def){
    return IntPrefConfig(key, def);
  }

  static DoublePrefConfig ofDouble(String key, double def){
    return DoublePrefConfig(key, def);
  }

  static StringListPrefConfig ofStringList(String key, List<String> def){
    return StringListPrefConfig(key, def);
  }

  PrefConfig(this._key, this._def);

  PreferenceObject<T> of(Ref ref);
}

class StringPrefConfig extends PrefConfig<String> {
  StringPrefConfig(super.key, super.def);

  @override
  PreferenceObject<String> of(Ref ref) {
    return StringPreferenceObj(_key, _def, ref);
  }
}
class IntPrefConfig extends PrefConfig<int> {
  IntPrefConfig(super.key, super.def);

  @override
  PreferenceObject<int> of(Ref ref) {
    return IntPreferenceObj(_key, _def, ref);
  }
}
class DoublePrefConfig extends PrefConfig<double> {
  DoublePrefConfig(super.key, super.def);

  @override
  PreferenceObject<double> of(Ref ref) {
    return DoublePreferenceObj(_key, _def, ref);
  }
}
class BoolPrefConfig extends PrefConfig<bool> {
  BoolPrefConfig(super.key, super.def);

  @override
  PreferenceObject<bool> of(Ref ref) {
    return BoolPreferenceObj(_key, _def, ref);
  }
}
class StringListPrefConfig extends PrefConfig<List<String>> {
  StringListPrefConfig(super.key, super.def);

  @override
  PreferenceObject<List<String>> of(Ref ref) {
    return StringListPreferenceObj(_key, _def, ref);
  }
}




abstract class PreferenceObject <T> {
  final String _key;
  final T _def;
  final Ref _ref;

  PreferenceObject(this._key, this._def, this._ref);
  T watch();
  T read();
  void set(T value);
  Future<bool> setAsync(T value);
}

class StringPreferenceObj extends PreferenceObject<String> {
  StringPreferenceObj(super.key, super.def, super.ref);
  @override
  String read() {
    final o = _ref.read(preferencesPod)[_key];
    if(o is String){
      return o;
    }
    return _def;
  }

  @override
  String watch() {
    final o = _ref.watch(preferencesPod)[_key];
    if(o is String){
      return o;
    }
    return _def;
  }

  @override
  void set(String value) {
    _ref.read(preferencesPod.notifier).setString(_key, value);
  }

  @override
  Future<bool> setAsync(String value) {
    return _ref.read(preferencesPod.notifier).setString(_key, value);
  }
}

class DoublePreferenceObj extends PreferenceObject<double> {
  DoublePreferenceObj(super.key, super.def, super.ref);
  @override
  double read() {
    final o = _ref.read(preferencesPod)[_key];
    if(o is double){
      return o;
    }
    return _def;
  }

  @override
  double watch() {
    final o = _ref.watch(preferencesPod)[_key];
    if(o is double){
      return o;
    }
    return _def;
  }

  @override
  void set(double value) {
    _ref.read(preferencesPod.notifier).setDouble(_key, value);
  }

  @override
  Future<bool> setAsync(double value) {
    return _ref.read(preferencesPod.notifier).setDouble(_key, value);
  }
}

class IntPreferenceObj extends PreferenceObject<int> {
  IntPreferenceObj(super.key, super.def, super.ref);
  @override
  int read() {
    final o = _ref.read(preferencesPod)[_key];
    if(o is int){
      return o;
    }
    return _def;
  }

  @override
  int watch() {
    final o = _ref.watch(preferencesPod)[_key];
    if(o is int){
      return o;
    }
    return _def;
  }

  @override
  void set(int value) {
    _ref.read(preferencesPod.notifier).setInt(_key, value);
  }

  @override
  Future<bool> setAsync(int value) {
    return _ref.read(preferencesPod.notifier).setInt(_key, value);
  }
}


class BoolPreferenceObj extends PreferenceObject<bool> {
  BoolPreferenceObj(super.key, super.def, super.ref);
  @override
  bool read() {
    final o = _ref.read(preferencesPod)[_key];
    if(o is bool){
      return o;
    }
    return _def;
  }

  @override
  bool watch() {
    final o = _ref.watch(preferencesPod)[_key];
    if(o is bool){
      return o;
    }
    return _def;
  }

  @override
  void set(bool value) {
    _ref.read(preferencesPod.notifier).setBool(_key, value);
  }

  @override
  Future<bool> setAsync(bool value) {
    return _ref.read(preferencesPod.notifier).setBool(_key, value);
  }
}

class StringListPreferenceObj extends PreferenceObject<List<String>> {
  StringListPreferenceObj(super.key, super.def, super.ref);
  @override
  List<String> read() {
    final o = _ref.read(preferencesPod)[_key];
    if(o is List<String>){
      return o;
    }
    return _def;
  }

  @override
  List<String> watch() {
    final o = _ref.watch(preferencesPod)[_key];
    if(o is List<String>){
      return o;
    }
    return _def;
  }

  @override
  void set(List<String> value) {
    _ref.read(preferencesPod.notifier).setStringList(_key, value);
  }

  @override
  Future<bool> setAsync(List<String> value) {
    return _ref.read(preferencesPod.notifier).setStringList(_key, value);
  }
}