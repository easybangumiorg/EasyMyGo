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

GlobalState _$GlobalStateFromJson(Map<String, dynamic> json) {
  return _GlobalState.fromJson(json);
}

/// @nodoc
mixin _$GlobalState {
// 是否在初始化中
  bool get isInitialing => throw _privateConstructorUsedError; // 数据迁移进度，0~100
  int get migratingProcess =>
      throw _privateConstructorUsedError; // 是否准备好（进入 app）
  bool get isReady => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalStateCopyWith<GlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res, GlobalState>;
  @useResult
  $Res call({bool isInitialing, int migratingProcess, bool isReady});
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res, $Val extends GlobalState>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialing = null,
    Object? migratingProcess = null,
    Object? isReady = null,
  }) {
    return _then(_value.copyWith(
      isInitialing: null == isInitialing
          ? _value.isInitialing
          : isInitialing // ignore: cast_nullable_to_non_nullable
              as bool,
      migratingProcess: null == migratingProcess
          ? _value.migratingProcess
          : migratingProcess // ignore: cast_nullable_to_non_nullable
              as int,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalStateImplCopyWith<$Res>
    implements $GlobalStateCopyWith<$Res> {
  factory _$$GlobalStateImplCopyWith(
          _$GlobalStateImpl value, $Res Function(_$GlobalStateImpl) then) =
      __$$GlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInitialing, int migratingProcess, bool isReady});
}

/// @nodoc
class __$$GlobalStateImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$GlobalStateImpl>
    implements _$$GlobalStateImplCopyWith<$Res> {
  __$$GlobalStateImplCopyWithImpl(
      _$GlobalStateImpl _value, $Res Function(_$GlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialing = null,
    Object? migratingProcess = null,
    Object? isReady = null,
  }) {
    return _then(_$GlobalStateImpl(
      isInitialing: null == isInitialing
          ? _value.isInitialing
          : isInitialing // ignore: cast_nullable_to_non_nullable
              as bool,
      migratingProcess: null == migratingProcess
          ? _value.migratingProcess
          : migratingProcess // ignore: cast_nullable_to_non_nullable
              as int,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalStateImpl implements _GlobalState {
  _$GlobalStateImpl(
      {required this.isInitialing,
      required this.migratingProcess,
      required this.isReady});

  factory _$GlobalStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalStateImplFromJson(json);

// 是否在初始化中
  @override
  final bool isInitialing;
// 数据迁移进度，0~100
  @override
  final int migratingProcess;
// 是否准备好（进入 app）
  @override
  final bool isReady;

  @override
  String toString() {
    return 'GlobalState(isInitialing: $isInitialing, migratingProcess: $migratingProcess, isReady: $isReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalStateImpl &&
            (identical(other.isInitialing, isInitialing) ||
                other.isInitialing == isInitialing) &&
            (identical(other.migratingProcess, migratingProcess) ||
                other.migratingProcess == migratingProcess) &&
            (identical(other.isReady, isReady) || other.isReady == isReady));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isInitialing, migratingProcess, isReady);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalStateImplCopyWith<_$GlobalStateImpl> get copyWith =>
      __$$GlobalStateImplCopyWithImpl<_$GlobalStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalStateImplToJson(
      this,
    );
  }
}

abstract class _GlobalState implements GlobalState {
  factory _GlobalState(
      {required final bool isInitialing,
      required final int migratingProcess,
      required final bool isReady}) = _$GlobalStateImpl;

  factory _GlobalState.fromJson(Map<String, dynamic> json) =
      _$GlobalStateImpl.fromJson;

  @override // 是否在初始化中
  bool get isInitialing;
  @override // 数据迁移进度，0~100
  int get migratingProcess;
  @override // 是否准备好（进入 app）
  bool get isReady;
  @override
  @JsonKey(ignore: true)
  _$$GlobalStateImplCopyWith<_$GlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
