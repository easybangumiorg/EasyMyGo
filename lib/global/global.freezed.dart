// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) {
  return _VersionInfo.fromJson(json);
}

/// @nodoc
mixin _$VersionInfo {
  String get versionName => throw _privateConstructorUsedError;
  int get versionCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionInfoCopyWith<VersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionInfoCopyWith<$Res> {
  factory $VersionInfoCopyWith(
          VersionInfo value, $Res Function(VersionInfo) then) =
      _$VersionInfoCopyWithImpl<$Res, VersionInfo>;
  @useResult
  $Res call({String versionName, int versionCode});
}

/// @nodoc
class _$VersionInfoCopyWithImpl<$Res, $Val extends VersionInfo>
    implements $VersionInfoCopyWith<$Res> {
  _$VersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionName = null,
    Object? versionCode = null,
  }) {
    return _then(_value.copyWith(
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionInfoImplCopyWith<$Res>
    implements $VersionInfoCopyWith<$Res> {
  factory _$$VersionInfoImplCopyWith(
          _$VersionInfoImpl value, $Res Function(_$VersionInfoImpl) then) =
      __$$VersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String versionName, int versionCode});
}

/// @nodoc
class __$$VersionInfoImplCopyWithImpl<$Res>
    extends _$VersionInfoCopyWithImpl<$Res, _$VersionInfoImpl>
    implements _$$VersionInfoImplCopyWith<$Res> {
  __$$VersionInfoImplCopyWithImpl(
      _$VersionInfoImpl _value, $Res Function(_$VersionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionName = null,
    Object? versionCode = null,
  }) {
    return _then(_$VersionInfoImpl(
      versionName: null == versionName
          ? _value.versionName
          : versionName // ignore: cast_nullable_to_non_nullable
              as String,
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionInfoImpl implements _VersionInfo {
  _$VersionInfoImpl({required this.versionName, required this.versionCode});

  factory _$VersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionInfoImplFromJson(json);

  @override
  final String versionName;
  @override
  final int versionCode;

  @override
  String toString() {
    return 'VersionInfo(versionName: $versionName, versionCode: $versionCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionInfoImpl &&
            (identical(other.versionName, versionName) ||
                other.versionName == versionName) &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, versionName, versionCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      __$$VersionInfoImplCopyWithImpl<_$VersionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionInfoImplToJson(
      this,
    );
  }
}

abstract class _VersionInfo implements VersionInfo {
  factory _VersionInfo(
      {required final String versionName,
      required final int versionCode}) = _$VersionInfoImpl;

  factory _VersionInfo.fromJson(Map<String, dynamic> json) =
      _$VersionInfoImpl.fromJson;

  @override
  String get versionName;
  @override
  int get versionCode;
  @override
  @JsonKey(ignore: true)
  _$$VersionInfoImplCopyWith<_$VersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
