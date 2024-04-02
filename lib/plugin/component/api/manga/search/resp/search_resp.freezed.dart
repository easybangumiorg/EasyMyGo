// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaSearchResp _$MangaSearchRespFromJson(Map<String, dynamic> json) {
  return _MangaSearchResp.fromJson(json);
}

/// @nodoc
mixin _$MangaSearchResp {
// 当页结果
  List<MangaCover>? get data =>
      throw _privateConstructorUsedError; // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaSearchRespCopyWith<MangaSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSearchRespCopyWith<$Res> {
  factory $MangaSearchRespCopyWith(
          MangaSearchResp value, $Res Function(MangaSearchResp) then) =
      _$MangaSearchRespCopyWithImpl<$Res, MangaSearchResp>;
  @useResult
  $Res call(
      {List<MangaCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaSearchRespCopyWithImpl<$Res, $Val extends MangaSearchResp>
    implements $MangaSearchRespCopyWith<$Res> {
  _$MangaSearchRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaCover>?,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$MangaSearchRespImplCopyWith<$Res>
    implements $MangaSearchRespCopyWith<$Res> {
  factory _$$MangaSearchRespImplCopyWith(_$MangaSearchRespImpl value,
          $Res Function(_$MangaSearchRespImpl) then) =
      __$$MangaSearchRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MangaCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaSearchRespImplCopyWithImpl<$Res>
    extends _$MangaSearchRespCopyWithImpl<$Res, _$MangaSearchRespImpl>
    implements _$$MangaSearchRespImplCopyWith<$Res> {
  __$$MangaSearchRespImplCopyWithImpl(
      _$MangaSearchRespImpl _value, $Res Function(_$MangaSearchRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaSearchRespImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaCover>?,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaSearchRespImpl implements _MangaSearchResp {
  _$MangaSearchRespImpl(
      {final List<MangaCover>? data = null,
      @JsonKey(name: "next_key") this.nextKey = null,
      required this.payload})
      : _data = data;

  factory _$MangaSearchRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaSearchRespImplFromJson(json);

// 当页结果
  final List<MangaCover>? _data;
// 当页结果
  @override
  @JsonKey()
  List<MangaCover>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// 下一页的 key，为 null 则代表没有下一页
  @override
  @JsonKey(name: "next_key")
  final String? nextKey;
  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'MangaSearchResp(data: $data, nextKey: $nextKey, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaSearchRespImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextKey, nextKey) || other.nextKey == nextKey) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextKey, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaSearchRespImplCopyWith<_$MangaSearchRespImpl> get copyWith =>
      __$$MangaSearchRespImplCopyWithImpl<_$MangaSearchRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaSearchRespImplToJson(
      this,
    );
  }
}

abstract class _MangaSearchResp implements MangaSearchResp {
  factory _MangaSearchResp(
      {final List<MangaCover>? data,
      @JsonKey(name: "next_key") final String? nextKey,
      required final ComponentPayload payload}) = _$MangaSearchRespImpl;

  factory _MangaSearchResp.fromJson(Map<String, dynamic> json) =
      _$MangaSearchRespImpl.fromJson;

  @override // 当页结果
  List<MangaCover>? get data;
  @override // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaSearchRespImplCopyWith<_$MangaSearchRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
