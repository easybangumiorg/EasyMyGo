// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelDetailedResp _$NovelDetailedRespFromJson(Map<String, dynamic> json) {
  return _NovelDetailedResp.fromJson(json);
}

/// @nodoc
mixin _$NovelDetailedResp {
  NovelDetailed? get detailed => throw _privateConstructorUsedError;
  List<NovelVolume>? get volumes => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  /// Serializes this NovelDetailedResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelDetailedRespCopyWith<NovelDetailedResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelDetailedRespCopyWith<$Res> {
  factory $NovelDetailedRespCopyWith(
          NovelDetailedResp value, $Res Function(NovelDetailedResp) then) =
      _$NovelDetailedRespCopyWithImpl<$Res, NovelDetailedResp>;
  @useResult
  $Res call(
      {NovelDetailed? detailed,
      List<NovelVolume>? volumes,
      ComponentPayload payload});

  $NovelDetailedCopyWith<$Res>? get detailed;
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelDetailedRespCopyWithImpl<$Res, $Val extends NovelDetailedResp>
    implements $NovelDetailedRespCopyWith<$Res> {
  _$NovelDetailedRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = freezed,
    Object? volumes = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      detailed: freezed == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as NovelDetailed?,
      volumes: freezed == volumes
          ? _value.volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<NovelVolume>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NovelDetailedCopyWith<$Res>? get detailed {
    if (_value.detailed == null) {
      return null;
    }

    return $NovelDetailedCopyWith<$Res>(_value.detailed!, (value) {
      return _then(_value.copyWith(detailed: value) as $Val);
    });
  }

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ComponentPayloadCopyWith<$Res> get payload {
    return $ComponentPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NovelDetailedRespImplCopyWith<$Res>
    implements $NovelDetailedRespCopyWith<$Res> {
  factory _$$NovelDetailedRespImplCopyWith(_$NovelDetailedRespImpl value,
          $Res Function(_$NovelDetailedRespImpl) then) =
      __$$NovelDetailedRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NovelDetailed? detailed,
      List<NovelVolume>? volumes,
      ComponentPayload payload});

  @override
  $NovelDetailedCopyWith<$Res>? get detailed;
  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelDetailedRespImplCopyWithImpl<$Res>
    extends _$NovelDetailedRespCopyWithImpl<$Res, _$NovelDetailedRespImpl>
    implements _$$NovelDetailedRespImplCopyWith<$Res> {
  __$$NovelDetailedRespImplCopyWithImpl(_$NovelDetailedRespImpl _value,
      $Res Function(_$NovelDetailedRespImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = freezed,
    Object? volumes = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelDetailedRespImpl(
      detailed: freezed == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as NovelDetailed?,
      volumes: freezed == volumes
          ? _value._volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<NovelVolume>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelDetailedRespImpl implements _NovelDetailedResp {
  _$NovelDetailedRespImpl(
      {this.detailed = null,
      final List<NovelVolume>? volumes = null,
      required this.payload})
      : _volumes = volumes;

  factory _$NovelDetailedRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelDetailedRespImplFromJson(json);

  @override
  @JsonKey()
  final NovelDetailed? detailed;
  final List<NovelVolume>? _volumes;
  @override
  @JsonKey()
  List<NovelVolume>? get volumes {
    final value = _volumes;
    if (value == null) return null;
    if (_volumes is EqualUnmodifiableListView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'NovelDetailedResp(detailed: $detailed, volumes: $volumes, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelDetailedRespImpl &&
            (identical(other.detailed, detailed) ||
                other.detailed == detailed) &&
            const DeepCollectionEquality().equals(other._volumes, _volumes) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detailed,
      const DeepCollectionEquality().hash(_volumes), payload);

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelDetailedRespImplCopyWith<_$NovelDetailedRespImpl> get copyWith =>
      __$$NovelDetailedRespImplCopyWithImpl<_$NovelDetailedRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelDetailedRespImplToJson(
      this,
    );
  }
}

abstract class _NovelDetailedResp implements NovelDetailedResp {
  factory _NovelDetailedResp(
      {final NovelDetailed? detailed,
      final List<NovelVolume>? volumes,
      required final ComponentPayload payload}) = _$NovelDetailedRespImpl;

  factory _NovelDetailedResp.fromJson(Map<String, dynamic> json) =
      _$NovelDetailedRespImpl.fromJson;

  @override
  NovelDetailed? get detailed;
  @override
  List<NovelVolume>? get volumes;
  @override
  ComponentPayload get payload;

  /// Create a copy of NovelDetailedResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelDetailedRespImplCopyWith<_$NovelDetailedRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
