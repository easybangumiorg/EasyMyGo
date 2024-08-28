// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeConfig _$ThemeConfigFromJson(Map<String, dynamic> json) {
  return _ThemeConfig.fromJson(json);
}

/// @nodoc
mixin _$ThemeConfig {
  int get seedColorIndex => throw _privateConstructorUsedError;
  int get darkModeIndex => throw _privateConstructorUsedError;

  /// Serializes this ThemeConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeConfigCopyWith<ThemeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeConfigCopyWith<$Res> {
  factory $ThemeConfigCopyWith(
          ThemeConfig value, $Res Function(ThemeConfig) then) =
      _$ThemeConfigCopyWithImpl<$Res, ThemeConfig>;
  @useResult
  $Res call({int seedColorIndex, int darkModeIndex});
}

/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res, $Val extends ThemeConfig>
    implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedColorIndex = null,
    Object? darkModeIndex = null,
  }) {
    return _then(_value.copyWith(
      seedColorIndex: null == seedColorIndex
          ? _value.seedColorIndex
          : seedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      darkModeIndex: null == darkModeIndex
          ? _value.darkModeIndex
          : darkModeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeConfigImplCopyWith<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  factory _$$ThemeConfigImplCopyWith(
          _$ThemeConfigImpl value, $Res Function(_$ThemeConfigImpl) then) =
      __$$ThemeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int seedColorIndex, int darkModeIndex});
}

/// @nodoc
class __$$ThemeConfigImplCopyWithImpl<$Res>
    extends _$ThemeConfigCopyWithImpl<$Res, _$ThemeConfigImpl>
    implements _$$ThemeConfigImplCopyWith<$Res> {
  __$$ThemeConfigImplCopyWithImpl(
      _$ThemeConfigImpl _value, $Res Function(_$ThemeConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seedColorIndex = null,
    Object? darkModeIndex = null,
  }) {
    return _then(_$ThemeConfigImpl(
      seedColorIndex: null == seedColorIndex
          ? _value.seedColorIndex
          : seedColorIndex // ignore: cast_nullable_to_non_nullable
              as int,
      darkModeIndex: null == darkModeIndex
          ? _value.darkModeIndex
          : darkModeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeConfigImpl implements _ThemeConfig {
  _$ThemeConfigImpl({this.seedColorIndex = 0, this.darkModeIndex = 0});

  factory _$ThemeConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeConfigImplFromJson(json);

  @override
  @JsonKey()
  final int seedColorIndex;
  @override
  @JsonKey()
  final int darkModeIndex;

  @override
  String toString() {
    return 'ThemeConfig(seedColorIndex: $seedColorIndex, darkModeIndex: $darkModeIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeConfigImpl &&
            (identical(other.seedColorIndex, seedColorIndex) ||
                other.seedColorIndex == seedColorIndex) &&
            (identical(other.darkModeIndex, darkModeIndex) ||
                other.darkModeIndex == darkModeIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seedColorIndex, darkModeIndex);

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      __$$ThemeConfigImplCopyWithImpl<_$ThemeConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeConfigImplToJson(
      this,
    );
  }
}

abstract class _ThemeConfig implements ThemeConfig {
  factory _ThemeConfig({final int seedColorIndex, final int darkModeIndex}) =
      _$ThemeConfigImpl;

  factory _ThemeConfig.fromJson(Map<String, dynamic> json) =
      _$ThemeConfigImpl.fromJson;

  @override
  int get seedColorIndex;
  @override
  int get darkModeIndex;

  /// Create a copy of ThemeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
