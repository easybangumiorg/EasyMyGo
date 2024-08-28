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

NovelReadResp _$NovelReadRespFromJson(Map<String, dynamic> json) {
  return _NovelReadResp.fromJson(json);
}

/// @nodoc
mixin _$NovelReadResp {
  List<NovelChapter>? get chapters => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  /// Serializes this NovelReadResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelReadResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelReadRespCopyWith<NovelReadResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelReadRespCopyWith<$Res> {
  factory $NovelReadRespCopyWith(
          NovelReadResp value, $Res Function(NovelReadResp) then) =
      _$NovelReadRespCopyWithImpl<$Res, NovelReadResp>;
  @useResult
  $Res call({List<NovelChapter>? chapters, ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelReadRespCopyWithImpl<$Res, $Val extends NovelReadResp>
    implements $NovelReadRespCopyWith<$Res> {
  _$NovelReadRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelReadResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<NovelChapter>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  /// Create a copy of NovelReadResp
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
abstract class _$$NovelReadRespImplCopyWith<$Res>
    implements $NovelReadRespCopyWith<$Res> {
  factory _$$NovelReadRespImplCopyWith(
          _$NovelReadRespImpl value, $Res Function(_$NovelReadRespImpl) then) =
      __$$NovelReadRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NovelChapter>? chapters, ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelReadRespImplCopyWithImpl<$Res>
    extends _$NovelReadRespCopyWithImpl<$Res, _$NovelReadRespImpl>
    implements _$$NovelReadRespImplCopyWith<$Res> {
  __$$NovelReadRespImplCopyWithImpl(
      _$NovelReadRespImpl _value, $Res Function(_$NovelReadRespImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelReadResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelReadRespImpl(
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<NovelChapter>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelReadRespImpl implements _NovelReadResp {
  _$NovelReadRespImpl(
      {final List<NovelChapter>? chapters = null, required this.payload})
      : _chapters = chapters;

  factory _$NovelReadRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelReadRespImplFromJson(json);

  final List<NovelChapter>? _chapters;
  @override
  @JsonKey()
  List<NovelChapter>? get chapters {
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
    return 'NovelReadResp(chapters: $chapters, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelReadRespImpl &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chapters), payload);

  /// Create a copy of NovelReadResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelReadRespImplCopyWith<_$NovelReadRespImpl> get copyWith =>
      __$$NovelReadRespImplCopyWithImpl<_$NovelReadRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelReadRespImplToJson(
      this,
    );
  }
}

abstract class _NovelReadResp implements NovelReadResp {
  factory _NovelReadResp(
      {final List<NovelChapter>? chapters,
      required final ComponentPayload payload}) = _$NovelReadRespImpl;

  factory _NovelReadResp.fromJson(Map<String, dynamic> json) =
      _$NovelReadRespImpl.fromJson;

  @override
  List<NovelChapter>? get chapters;
  @override
  ComponentPayload get payload;

  /// Create a copy of NovelReadResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelReadRespImplCopyWith<_$NovelReadRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
