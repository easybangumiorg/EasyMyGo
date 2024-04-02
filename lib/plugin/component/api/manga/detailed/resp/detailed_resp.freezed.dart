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

MangaDetailedResp _$MangaDetailedRespFromJson(Map<String, dynamic> json) {
  return _MangaDetailedResp.fromJson(json);
}

/// @nodoc
mixin _$MangaDetailedResp {
  MangaDetailed? get detailed => throw _privateConstructorUsedError;
  List<MangaChapter>? get chapters => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaDetailedRespCopyWith<MangaDetailedResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailedRespCopyWith<$Res> {
  factory $MangaDetailedRespCopyWith(
          MangaDetailedResp value, $Res Function(MangaDetailedResp) then) =
      _$MangaDetailedRespCopyWithImpl<$Res, MangaDetailedResp>;
  @useResult
  $Res call(
      {MangaDetailed? detailed,
      List<MangaChapter>? chapters,
      ComponentPayload payload});

  $MangaDetailedCopyWith<$Res>? get detailed;
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaDetailedRespCopyWithImpl<$Res, $Val extends MangaDetailedResp>
    implements $MangaDetailedRespCopyWith<$Res> {
  _$MangaDetailedRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = freezed,
    Object? chapters = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      detailed: freezed == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as MangaDetailed?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaDetailedCopyWith<$Res>? get detailed {
    if (_value.detailed == null) {
      return null;
    }

    return $MangaDetailedCopyWith<$Res>(_value.detailed!, (value) {
      return _then(_value.copyWith(detailed: value) as $Val);
    });
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
abstract class _$$MangaDetailedRespImplCopyWith<$Res>
    implements $MangaDetailedRespCopyWith<$Res> {
  factory _$$MangaDetailedRespImplCopyWith(_$MangaDetailedRespImpl value,
          $Res Function(_$MangaDetailedRespImpl) then) =
      __$$MangaDetailedRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MangaDetailed? detailed,
      List<MangaChapter>? chapters,
      ComponentPayload payload});

  @override
  $MangaDetailedCopyWith<$Res>? get detailed;
  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaDetailedRespImplCopyWithImpl<$Res>
    extends _$MangaDetailedRespCopyWithImpl<$Res, _$MangaDetailedRespImpl>
    implements _$$MangaDetailedRespImplCopyWith<$Res> {
  __$$MangaDetailedRespImplCopyWithImpl(_$MangaDetailedRespImpl _value,
      $Res Function(_$MangaDetailedRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = freezed,
    Object? chapters = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaDetailedRespImpl(
      detailed: freezed == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as MangaDetailed?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaDetailedRespImpl implements _MangaDetailedResp {
  _$MangaDetailedRespImpl(
      {this.detailed = null,
      final List<MangaChapter>? chapters = null,
      required this.payload})
      : _chapters = chapters;

  factory _$MangaDetailedRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaDetailedRespImplFromJson(json);

  @override
  @JsonKey()
  final MangaDetailed? detailed;
  final List<MangaChapter>? _chapters;
  @override
  @JsonKey()
  List<MangaChapter>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'MangaDetailedResp(detailed: $detailed, chapters: $chapters, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaDetailedRespImpl &&
            (identical(other.detailed, detailed) ||
                other.detailed == detailed) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, detailed,
      const DeepCollectionEquality().hash(_chapters), payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaDetailedRespImplCopyWith<_$MangaDetailedRespImpl> get copyWith =>
      __$$MangaDetailedRespImplCopyWithImpl<_$MangaDetailedRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaDetailedRespImplToJson(
      this,
    );
  }
}

abstract class _MangaDetailedResp implements MangaDetailedResp {
  factory _MangaDetailedResp(
      {final MangaDetailed? detailed,
      final List<MangaChapter>? chapters,
      required final ComponentPayload payload}) = _$MangaDetailedRespImpl;

  factory _MangaDetailedResp.fromJson(Map<String, dynamic> json) =
      _$MangaDetailedRespImpl.fromJson;

  @override
  MangaDetailed? get detailed;
  @override
  List<MangaChapter>? get chapters;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaDetailedRespImplCopyWith<_$MangaDetailedRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
