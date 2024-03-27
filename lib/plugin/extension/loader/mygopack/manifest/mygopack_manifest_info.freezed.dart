// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mygopack_manifest_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MygoPackManifest _$MygoPackManifestFromJson(Map<String, dynamic> json) {
  return _MygoPackManifest.fromJson(json);
}

/// @nodoc
mixin _$MygoPackManifest {
// 包名唯一
  String get package => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_name')
  String get versionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_code')
  int get versionCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'lib_version')
  int get libVersion => throw _privateConstructorUsedError;
  String get readme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MygoPackManifestCopyWith<MygoPackManifest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MygoPackManifestCopyWith<$Res> {
  factory $MygoPackManifestCopyWith(
          MygoPackManifest value, $Res Function(MygoPackManifest) then) =
      _$MygoPackManifestCopyWithImpl<$Res, MygoPackManifest>;
  @useResult
  $Res call(
      {String package,
      String label,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'version_code') int versionCode,
      @JsonKey(name: 'lib_version') int libVersion,
      String readme});
}

/// @nodoc
class _$MygoPackManifestCopyWithImpl<$Res, $Val extends MygoPackManifest>
    implements $MygoPackManifestCopyWith<$Res> {
  _$MygoPackManifestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? label = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? libVersion = null,
    Object? readme = null,
  }) {
    return _then(_value.copyWith(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      libVersion: null == libVersion
          ? _value.libVersion
          : libVersion // ignore: cast_nullable_to_non_nullable
              as int,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MygoPackManifestImplCopyWith<$Res>
    implements $MygoPackManifestCopyWith<$Res> {
  factory _$$MygoPackManifestImplCopyWith(_$MygoPackManifestImpl value,
          $Res Function(_$MygoPackManifestImpl) then) =
      __$$MygoPackManifestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String package,
      String label,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'version_code') int versionCode,
      @JsonKey(name: 'lib_version') int libVersion,
      String readme});
}

/// @nodoc
class __$$MygoPackManifestImplCopyWithImpl<$Res>
    extends _$MygoPackManifestCopyWithImpl<$Res, _$MygoPackManifestImpl>
    implements _$$MygoPackManifestImplCopyWith<$Res> {
  __$$MygoPackManifestImplCopyWithImpl(_$MygoPackManifestImpl _value,
      $Res Function(_$MygoPackManifestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? label = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? libVersion = null,
    Object? readme = null,
  }) {
    return _then(_$MygoPackManifestImpl(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      libVersion: null == libVersion
          ? _value.libVersion
          : libVersion // ignore: cast_nullable_to_non_nullable
              as int,
      readme: null == readme
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MygoPackManifestImpl implements _MygoPackManifest {
  _$MygoPackManifestImpl(
      {required this.package,
      required this.label,
      @JsonKey(name: 'version_name') required this.versionName,
      @JsonKey(name: 'version_code') required this.versionCode,
      @JsonKey(name: 'lib_version') required this.libVersion,
      this.readme = ""});

  factory _$MygoPackManifestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MygoPackManifestImplFromJson(json);

// 包名唯一
  @override
  final String package;
  @override
  final String label;
  @override
  @JsonKey(name: 'version_name')
  final String versionName;
  @override
  @JsonKey(name: 'version_code')
  final int versionCode;
  @override
  @JsonKey(name: 'lib_version')
  final int libVersion;
  @override
  @JsonKey()
  final String readme;

  @override
  String toString() {
    return 'MygoPackManifest(package: $package, label: $label, versionName: $versionName, versionCode: $versionCode, libVersion: $libVersion, readme: $readme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MygoPackManifestImpl &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.versionName, versionName) ||
                other.versionName == versionName) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            (identical(other.libVersion, libVersion) ||
                other.libVersion == libVersion) &&
            (identical(other.readme, readme) || other.readme == readme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package, label, versionName,
      versionCode, libVersion, readme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MygoPackManifestImplCopyWith<_$MygoPackManifestImpl> get copyWith =>
      __$$MygoPackManifestImplCopyWithImpl<_$MygoPackManifestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MygoPackManifestImplToJson(
      this,
    );
  }
}

abstract class _MygoPackManifest implements MygoPackManifest {
  factory _MygoPackManifest(
      {required final String package,
      required final String label,
      @JsonKey(name: 'version_name') required final String versionName,
      @JsonKey(name: 'version_code') required final int versionCode,
      @JsonKey(name: 'lib_version') required final int libVersion,
      final String readme}) = _$MygoPackManifestImpl;

  factory _MygoPackManifest.fromJson(Map<String, dynamic> json) =
      _$MygoPackManifestImpl.fromJson;

  @override // 包名唯一
  String get package;
  @override
  String get label;
  @override
  @JsonKey(name: 'version_name')
  String get versionName;
  @override
  @JsonKey(name: 'version_code')
  int get versionCode;
  @override
  @JsonKey(name: 'lib_version')
  int get libVersion;
  @override
  String get readme;
  @override
  @JsonKey(ignore: true)
  _$$MygoPackManifestImplCopyWith<_$MygoPackManifestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
