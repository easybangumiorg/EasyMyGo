// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferenceState _$PreferenceStateFromJson(Map<String, dynamic> json) {
  return _PreferenceState.fromJson(json);
}

/// @nodoc
mixin _$PreferenceState {
// 主题下标
  int get themeIndex =>
      throw _privateConstructorUsedError; // 夜间模式状态 0:auto 1:off 2:on
  int get darkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceStateCopyWith<PreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceStateCopyWith<$Res> {
  factory $PreferenceStateCopyWith(
          PreferenceState value, $Res Function(PreferenceState) then) =
      _$PreferenceStateCopyWithImpl<$Res, PreferenceState>;
  @useResult
  $Res call({int themeIndex, int darkMode});
}

/// @nodoc
class _$PreferenceStateCopyWithImpl<$Res, $Val extends PreferenceState>
    implements $PreferenceStateCopyWith<$Res> {
  _$PreferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? darkMode = null,
  }) {
    return _then(_value.copyWith(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceStateImplCopyWith<$Res>
    implements $PreferenceStateCopyWith<$Res> {
  factory _$$PreferenceStateImplCopyWith(_$PreferenceStateImpl value,
          $Res Function(_$PreferenceStateImpl) then) =
      __$$PreferenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int themeIndex, int darkMode});
}

/// @nodoc
class __$$PreferenceStateImplCopyWithImpl<$Res>
    extends _$PreferenceStateCopyWithImpl<$Res, _$PreferenceStateImpl>
    implements _$$PreferenceStateImplCopyWith<$Res> {
  __$$PreferenceStateImplCopyWithImpl(
      _$PreferenceStateImpl _value, $Res Function(_$PreferenceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? darkMode = null,
  }) {
    return _then(_$PreferenceStateImpl(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferenceStateImpl implements _PreferenceState {
  _$PreferenceStateImpl({required this.themeIndex, required this.darkMode});

  factory _$PreferenceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceStateImplFromJson(json);

// 主题下标
  @override
  final int themeIndex;
// 夜间模式状态 0:auto 1:off 2:on
  @override
  final int darkMode;

  @override
  String toString() {
    return 'PreferenceState(themeIndex: $themeIndex, darkMode: $darkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceStateImpl &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex) &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeIndex, darkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceStateImplCopyWith<_$PreferenceStateImpl> get copyWith =>
      __$$PreferenceStateImplCopyWithImpl<_$PreferenceStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceStateImplToJson(
      this,
    );
  }
}

abstract class _PreferenceState implements PreferenceState {
  factory _PreferenceState(
      {required final int themeIndex,
      required final int darkMode}) = _$PreferenceStateImpl;

  factory _PreferenceState.fromJson(Map<String, dynamic> json) =
      _$PreferenceStateImpl.fromJson;

  @override // 主题下标
  int get themeIndex;
  @override // 夜间模式状态 0:auto 1:off 2:on
  int get darkMode;
  @override
  @JsonKey(ignore: true)
  _$$PreferenceStateImplCopyWith<_$PreferenceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
