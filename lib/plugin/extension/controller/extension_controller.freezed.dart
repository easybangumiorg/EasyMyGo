// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtensionState _$ExtensionStateFromJson(Map<String, dynamic> json) {
  return _ExtensionState.fromJson(json);
}

/// @nodoc
mixin _$ExtensionState {
  bool get loading => throw _privateConstructorUsedError;
  Map<String, ExtensionData> get extensions =>
      throw _privateConstructorUsedError;

  /// Serializes this ExtensionState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtensionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtensionStateCopyWith<ExtensionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionStateCopyWith<$Res> {
  factory $ExtensionStateCopyWith(
          ExtensionState value, $Res Function(ExtensionState) then) =
      _$ExtensionStateCopyWithImpl<$Res, ExtensionState>;
  @useResult
  $Res call({bool loading, Map<String, ExtensionData> extensions});
}

/// @nodoc
class _$ExtensionStateCopyWithImpl<$Res, $Val extends ExtensionState>
    implements $ExtensionStateCopyWith<$Res> {
  _$ExtensionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtensionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? extensions = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      extensions: null == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<String, ExtensionData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtensionStateImplCopyWith<$Res>
    implements $ExtensionStateCopyWith<$Res> {
  factory _$$ExtensionStateImplCopyWith(_$ExtensionStateImpl value,
          $Res Function(_$ExtensionStateImpl) then) =
      __$$ExtensionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Map<String, ExtensionData> extensions});
}

/// @nodoc
class __$$ExtensionStateImplCopyWithImpl<$Res>
    extends _$ExtensionStateCopyWithImpl<$Res, _$ExtensionStateImpl>
    implements _$$ExtensionStateImplCopyWith<$Res> {
  __$$ExtensionStateImplCopyWithImpl(
      _$ExtensionStateImpl _value, $Res Function(_$ExtensionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtensionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? extensions = null,
  }) {
    return _then(_$ExtensionStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      extensions: null == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<String, ExtensionData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtensionStateImpl implements _ExtensionState {
  _$ExtensionStateImpl(
      {this.loading = true,
      final Map<String, ExtensionData> extensions = const {}})
      : _extensions = extensions;

  factory _$ExtensionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionStateImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  final Map<String, ExtensionData> _extensions;
  @override
  @JsonKey()
  Map<String, ExtensionData> get extensions {
    if (_extensions is EqualUnmodifiableMapView) return _extensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extensions);
  }

  @override
  String toString() {
    return 'ExtensionState(loading: $loading, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, loading, const DeepCollectionEquality().hash(_extensions));

  /// Create a copy of ExtensionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionStateImplCopyWith<_$ExtensionStateImpl> get copyWith =>
      __$$ExtensionStateImplCopyWithImpl<_$ExtensionStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionStateImplToJson(
      this,
    );
  }
}

abstract class _ExtensionState implements ExtensionState {
  factory _ExtensionState(
      {final bool loading,
      final Map<String, ExtensionData> extensions}) = _$ExtensionStateImpl;

  factory _ExtensionState.fromJson(Map<String, dynamic> json) =
      _$ExtensionStateImpl.fromJson;

  @override
  bool get loading;
  @override
  Map<String, ExtensionData> get extensions;

  /// Create a copy of ExtensionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtensionStateImplCopyWith<_$ExtensionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
