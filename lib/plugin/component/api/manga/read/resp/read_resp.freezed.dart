// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaReadResp _$MangaReadRespFromJson(Map<String, dynamic> json) {
  return _MangaReadResp.fromJson(json);
}

/// @nodoc
mixin _$MangaReadResp {
  List<MangaPicture>? get pictures => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaReadRespCopyWith<MangaReadResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaReadRespCopyWith<$Res> {
  factory $MangaReadRespCopyWith(
          MangaReadResp value, $Res Function(MangaReadResp) then) =
      _$MangaReadRespCopyWithImpl<$Res, MangaReadResp>;
  @useResult
  $Res call({List<MangaPicture>? pictures, ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaReadRespCopyWithImpl<$Res, $Val extends MangaReadResp>
    implements $MangaReadRespCopyWith<$Res> {
  _$MangaReadRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MangaPicture>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComponentPayloadCopyWith<$Res> get payload {
    return $ComponentPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MangaReadRespImplCopyWith<$Res>
    implements $MangaReadRespCopyWith<$Res> {
  factory _$$MangaReadRespImplCopyWith(
          _$MangaReadRespImpl value, $Res Function(_$MangaReadRespImpl) then) =
      __$$MangaReadRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MangaPicture>? pictures, ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaReadRespImplCopyWithImpl<$Res>
    extends _$MangaReadRespCopyWithImpl<$Res, _$MangaReadRespImpl>
    implements _$$MangaReadRespImplCopyWith<$Res> {
  __$$MangaReadRespImplCopyWithImpl(
      _$MangaReadRespImpl _value, $Res Function(_$MangaReadRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaReadRespImpl(
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MangaPicture>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaReadRespImpl implements _MangaReadResp {
  _$MangaReadRespImpl(
      {final List<MangaPicture>? pictures = null, required this.payload})
      : _pictures = pictures;

  factory _$MangaReadRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaReadRespImplFromJson(json);

  final List<MangaPicture>? _pictures;
  @override
  @JsonKey()
  List<MangaPicture>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'MangaReadResp(pictures: $pictures, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaReadRespImpl &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pictures), payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaReadRespImplCopyWith<_$MangaReadRespImpl> get copyWith =>
      __$$MangaReadRespImplCopyWithImpl<_$MangaReadRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaReadRespImplToJson(
      this,
    );
  }
}

abstract class _MangaReadResp implements MangaReadResp {
  factory _MangaReadResp(
      {final List<MangaPicture>? pictures,
      required final ComponentPayload payload}) = _$MangaReadRespImpl;

  factory _MangaReadResp.fromJson(Map<String, dynamic> json) =
      _$MangaReadRespImpl.fromJson;

  @override
  List<MangaPicture>? get pictures;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaReadRespImplCopyWith<_$MangaReadRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
