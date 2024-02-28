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

/// @nodoc
mixin _$GlobalState {
  BuildContext get ctx => throw _privateConstructorUsedError;
  AppLocalizations get l10n => throw _privateConstructorUsedError;
  SharedPreferences get preferences => throw _privateConstructorUsedError;

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
  $Res call(
      {BuildContext ctx, AppLocalizations l10n, SharedPreferences preferences});
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
    Object? ctx = null,
    Object? l10n = freezed,
    Object? preferences = null,
  }) {
    return _then(_value.copyWith(
      ctx: null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      l10n: freezed == l10n
          ? _value.l10n
          : l10n // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
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
  $Res call(
      {BuildContext ctx, AppLocalizations l10n, SharedPreferences preferences});
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
    Object? ctx = null,
    Object? l10n = freezed,
    Object? preferences = null,
  }) {
    return _then(_$GlobalStateImpl(
      ctx: null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      l10n: freezed == l10n
          ? _value.l10n
          : l10n // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      preferences: null == preferences
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
    ));
  }
}

/// @nodoc

class _$GlobalStateImpl implements _GlobalState {
  _$GlobalStateImpl(
      {required this.ctx, required this.l10n, required this.preferences});

  @override
  final BuildContext ctx;
  @override
  final AppLocalizations l10n;
  @override
  final SharedPreferences preferences;

  @override
  String toString() {
    return 'GlobalState(ctx: $ctx, l10n: $l10n, preferences: $preferences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalStateImpl &&
            (identical(other.ctx, ctx) || other.ctx == ctx) &&
            const DeepCollectionEquality().equals(other.l10n, l10n) &&
            (identical(other.preferences, preferences) ||
                other.preferences == preferences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ctx, const DeepCollectionEquality().hash(l10n), preferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalStateImplCopyWith<_$GlobalStateImpl> get copyWith =>
      __$$GlobalStateImplCopyWithImpl<_$GlobalStateImpl>(this, _$identity);
}

abstract class _GlobalState implements GlobalState {
  factory _GlobalState(
      {required final BuildContext ctx,
      required final AppLocalizations l10n,
      required final SharedPreferences preferences}) = _$GlobalStateImpl;

  @override
  BuildContext get ctx;
  @override
  AppLocalizations get l10n;
  @override
  SharedPreferences get preferences;
  @override
  @JsonKey(ignore: true)
  _$$GlobalStateImplCopyWith<_$GlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
