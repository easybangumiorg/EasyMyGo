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

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) {
  return _SearchResp.fromJson(json);
}

/// @nodoc
mixin _$SearchResp {
// 当页结果
  List<MangaCover>? get data =>
      throw _privateConstructorUsedError; // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRespCopyWith<SearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRespCopyWith<$Res> {
  factory $SearchRespCopyWith(
          SearchResp value, $Res Function(SearchResp) then) =
      _$SearchRespCopyWithImpl<$Res, SearchResp>;
  @useResult
  $Res call(
      {List<MangaCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SearchRespCopyWithImpl<$Res, $Val extends SearchResp>
    implements $SearchRespCopyWith<$Res> {
  _$SearchRespCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchRespImplCopyWith<$Res>
    implements $SearchRespCopyWith<$Res> {
  factory _$$SearchRespImplCopyWith(
          _$SearchRespImpl value, $Res Function(_$SearchRespImpl) then) =
      __$$SearchRespImplCopyWithImpl<$Res>;
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
class __$$SearchRespImplCopyWithImpl<$Res>
    extends _$SearchRespCopyWithImpl<$Res, _$SearchRespImpl>
    implements _$$SearchRespImplCopyWith<$Res> {
  __$$SearchRespImplCopyWithImpl(
      _$SearchRespImpl _value, $Res Function(_$SearchRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_$SearchRespImpl(
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
class _$SearchRespImpl implements _SearchResp {
  _$SearchRespImpl(
      {final List<MangaCover>? data = null,
      @JsonKey(name: "next_key") this.nextKey = null,
      required this.payload})
      : _data = data;

  factory _$SearchRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRespImplFromJson(json);

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
    return 'SearchResp(data: $data, nextKey: $nextKey, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRespImpl &&
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
  _$$SearchRespImplCopyWith<_$SearchRespImpl> get copyWith =>
      __$$SearchRespImplCopyWithImpl<_$SearchRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRespImplToJson(
      this,
    );
  }
}

abstract class _SearchResp implements SearchResp {
  factory _SearchResp(
      {final List<MangaCover>? data,
      @JsonKey(name: "next_key") final String? nextKey,
      required final ComponentPayload payload}) = _$SearchRespImpl;

  factory _SearchResp.fromJson(Map<String, dynamic> json) =
      _$SearchRespImpl.fromJson;

  @override // 当页结果
  List<MangaCover>? get data;
  @override // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$SearchRespImplCopyWith<_$SearchRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
