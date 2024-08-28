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

NovelSearchResp _$NovelSearchRespFromJson(Map<String, dynamic> json) {
  return _NovelSearchResp.fromJson(json);
}

/// @nodoc
mixin _$NovelSearchResp {
// 当页结果
  List<NovelCover>? get data =>
      throw _privateConstructorUsedError; // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  /// Serializes this NovelSearchResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelSearchResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelSearchRespCopyWith<NovelSearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelSearchRespCopyWith<$Res> {
  factory $NovelSearchRespCopyWith(
          NovelSearchResp value, $Res Function(NovelSearchResp) then) =
      _$NovelSearchRespCopyWithImpl<$Res, NovelSearchResp>;
  @useResult
  $Res call(
      {List<NovelCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelSearchRespCopyWithImpl<$Res, $Val extends NovelSearchResp>
    implements $NovelSearchRespCopyWith<$Res> {
  _$NovelSearchRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelSearchResp
  /// with the given fields replaced by the non-null parameter values.
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
              as List<NovelCover>?,
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

  /// Create a copy of NovelSearchResp
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
abstract class _$$NovelSearchRespImplCopyWith<$Res>
    implements $NovelSearchRespCopyWith<$Res> {
  factory _$$NovelSearchRespImplCopyWith(_$NovelSearchRespImpl value,
          $Res Function(_$NovelSearchRespImpl) then) =
      __$$NovelSearchRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NovelCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelSearchRespImplCopyWithImpl<$Res>
    extends _$NovelSearchRespCopyWithImpl<$Res, _$NovelSearchRespImpl>
    implements _$$NovelSearchRespImplCopyWith<$Res> {
  __$$NovelSearchRespImplCopyWithImpl(
      _$NovelSearchRespImpl _value, $Res Function(_$NovelSearchRespImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelSearchResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelSearchRespImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NovelCover>?,
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
class _$NovelSearchRespImpl implements _NovelSearchResp {
  _$NovelSearchRespImpl(
      {final List<NovelCover>? data = null,
      @JsonKey(name: "next_key") this.nextKey = null,
      required this.payload})
      : _data = data;

  factory _$NovelSearchRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelSearchRespImplFromJson(json);

// 当页结果
  final List<NovelCover>? _data;
// 当页结果
  @override
  @JsonKey()
  List<NovelCover>? get data {
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
    return 'NovelSearchResp(data: $data, nextKey: $nextKey, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelSearchRespImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextKey, nextKey) || other.nextKey == nextKey) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), nextKey, payload);

  /// Create a copy of NovelSearchResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelSearchRespImplCopyWith<_$NovelSearchRespImpl> get copyWith =>
      __$$NovelSearchRespImplCopyWithImpl<_$NovelSearchRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelSearchRespImplToJson(
      this,
    );
  }
}

abstract class _NovelSearchResp implements NovelSearchResp {
  factory _NovelSearchResp(
      {final List<NovelCover>? data,
      @JsonKey(name: "next_key") final String? nextKey,
      required final ComponentPayload payload}) = _$NovelSearchRespImpl;

  factory _NovelSearchResp.fromJson(Map<String, dynamic> json) =
      _$NovelSearchRespImpl.fromJson;

// 当页结果
  @override
  List<NovelCover>? get data; // 下一页的 key，为 null 则代表没有下一页
  @override
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  ComponentPayload get payload;

  /// Create a copy of NovelSearchResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelSearchRespImplCopyWith<_$NovelSearchRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
