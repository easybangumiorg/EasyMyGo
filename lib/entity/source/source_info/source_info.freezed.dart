// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceInfo _$SourceInfoFromJson(Map<String, dynamic> json) {
  return _SourceInfo.fromJson(json);
}

/// @nodoc
mixin _$SourceInfo {
// 单个 Extension 里的所有 Source 的 key 需要唯一
  String get key => throw _privateConstructorUsedError; // 所在 Extension 的包名
  @JsonKey(name: 'from_package')
  String get fromPackage => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  SourceType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_name')
  String get versionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_code')
  int get versionCode => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'loader_type')
  SourceLoaderType get loaderType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceInfoCopyWith<SourceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceInfoCopyWith<$Res> {
  factory $SourceInfoCopyWith(
          SourceInfo value, $Res Function(SourceInfo) then) =
      _$SourceInfoCopyWithImpl<$Res, SourceInfo>;
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'from_package') String fromPackage,
      String label,
      SourceType type,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'version_code') int versionCode,
      String path,
      @JsonKey(name: 'loader_type') SourceLoaderType loaderType,
      String description});
}

/// @nodoc
class _$SourceInfoCopyWithImpl<$Res, $Val extends SourceInfo>
    implements $SourceInfoCopyWith<$Res> {
  _$SourceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? fromPackage = null,
    Object? label = null,
    Object? type = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? path = null,
    Object? loaderType = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fromPackage: null == fromPackage
          ? _value.fromPackage
          : fromPackage // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SourceType,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      loaderType: null == loaderType
          ? _value.loaderType
          : loaderType // ignore: cast_nullable_to_non_nullable
              as SourceLoaderType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceInfoImplCopyWith<$Res>
    implements $SourceInfoCopyWith<$Res> {
  factory _$$SourceInfoImplCopyWith(
          _$SourceInfoImpl value, $Res Function(_$SourceInfoImpl) then) =
      __$$SourceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'from_package') String fromPackage,
      String label,
      SourceType type,
      @JsonKey(name: 'version_name') String versionName,
      @JsonKey(name: 'version_code') int versionCode,
      String path,
      @JsonKey(name: 'loader_type') SourceLoaderType loaderType,
      String description});
}

/// @nodoc
class __$$SourceInfoImplCopyWithImpl<$Res>
    extends _$SourceInfoCopyWithImpl<$Res, _$SourceInfoImpl>
    implements _$$SourceInfoImplCopyWith<$Res> {
  __$$SourceInfoImplCopyWithImpl(
      _$SourceInfoImpl _value, $Res Function(_$SourceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? fromPackage = null,
    Object? label = null,
    Object? type = null,
    Object? versionName = null,
    Object? versionCode = null,
    Object? path = null,
    Object? loaderType = null,
    Object? description = null,
  }) {
    return _then(_$SourceInfoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fromPackage: null == fromPackage
          ? _value.fromPackage
          : fromPackage // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SourceType,
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      loaderType: null == loaderType
          ? _value.loaderType
          : loaderType // ignore: cast_nullable_to_non_nullable
              as SourceLoaderType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceInfoImpl implements _SourceInfo {
  _$SourceInfoImpl(
      {required this.key,
      @JsonKey(name: 'from_package') required this.fromPackage,
      required this.label,
      required this.type,
      @JsonKey(name: 'version_name') required this.versionName,
      @JsonKey(name: 'version_code') required this.versionCode,
      required this.path,
      @JsonKey(name: 'loader_type') required this.loaderType,
      this.description = ""});

  factory _$SourceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceInfoImplFromJson(json);

// 单个 Extension 里的所有 Source 的 key 需要唯一
  @override
  final String key;
// 所在 Extension 的包名
  @override
  @JsonKey(name: 'from_package')
  final String fromPackage;
  @override
  final String label;
  @override
  final SourceType type;
  @override
  @JsonKey(name: 'version_name')
  final String versionName;
  @override
  @JsonKey(name: 'version_code')
  final int versionCode;
  @override
  final String path;
  @override
  @JsonKey(name: 'loader_type')
  final SourceLoaderType loaderType;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'SourceInfo(key: $key, fromPackage: $fromPackage, label: $label, type: $type, versionName: $versionName, versionCode: $versionCode, path: $path, loaderType: $loaderType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceInfoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.fromPackage, fromPackage) ||
                other.fromPackage == fromPackage) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.versionName, versionName) ||
                other.versionName == versionName) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.loaderType, loaderType) ||
                other.loaderType == loaderType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, fromPackage, label, type,
      versionName, versionCode, path, loaderType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceInfoImplCopyWith<_$SourceInfoImpl> get copyWith =>
      __$$SourceInfoImplCopyWithImpl<_$SourceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceInfoImplToJson(
      this,
    );
  }
}

abstract class _SourceInfo implements SourceInfo {
  factory _SourceInfo(
      {required final String key,
      @JsonKey(name: 'from_package') required final String fromPackage,
      required final String label,
      required final SourceType type,
      @JsonKey(name: 'version_name') required final String versionName,
      @JsonKey(name: 'version_code') required final int versionCode,
      required final String path,
      @JsonKey(name: 'loader_type') required final SourceLoaderType loaderType,
      final String description}) = _$SourceInfoImpl;

  factory _SourceInfo.fromJson(Map<String, dynamic> json) =
      _$SourceInfoImpl.fromJson;

  @override // 单个 Extension 里的所有 Source 的 key 需要唯一
  String get key;
  @override // 所在 Extension 的包名
  @JsonKey(name: 'from_package')
  String get fromPackage;
  @override
  String get label;
  @override
  SourceType get type;
  @override
  @JsonKey(name: 'version_name')
  String get versionName;
  @override
  @JsonKey(name: 'version_code')
  int get versionCode;
  @override
  String get path;
  @override
  @JsonKey(name: 'loader_type')
  SourceLoaderType get loaderType;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SourceInfoImplCopyWith<_$SourceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
