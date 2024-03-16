// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return _SearchItem.fromJson(json);
}

/// @nodoc
mixin _$SearchItem {
// 当页结果
  List<MangaCover> get data =>
      throw _privateConstructorUsedError; // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchItemCopyWith<SearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res, SearchItem>;
  @useResult
  $Res call(
      {List<MangaCover> data, @JsonKey(name: "next_key") String? nextKey});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res, $Val extends SearchItem>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextKey = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaCover>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchItemImplCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$SearchItemImplCopyWith(
          _$SearchItemImpl value, $Res Function(_$SearchItemImpl) then) =
      __$$SearchItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MangaCover> data, @JsonKey(name: "next_key") String? nextKey});
}

/// @nodoc
class __$$SearchItemImplCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$SearchItemImpl>
    implements _$$SearchItemImplCopyWith<$Res> {
  __$$SearchItemImplCopyWithImpl(
      _$SearchItemImpl _value, $Res Function(_$SearchItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? nextKey = freezed,
  }) {
    return _then(_$SearchItemImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MangaCover>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchItemImpl implements _SearchItem {
  _$SearchItemImpl(
      {required final List<MangaCover> data,
      @JsonKey(name: "next_key") required this.nextKey})
      : _data = data;

  factory _$SearchItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchItemImplFromJson(json);

// 当页结果
  final List<MangaCover> _data;
// 当页结果
  @override
  List<MangaCover> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

// 下一页的 key，为 null 则代表没有下一页
  @override
  @JsonKey(name: "next_key")
  final String? nextKey;

  @override
  String toString() {
    return 'SearchItem(data: $data, nextKey: $nextKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.nextKey, nextKey) || other.nextKey == nextKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), nextKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      __$$SearchItemImplCopyWithImpl<_$SearchItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchItemImplToJson(
      this,
    );
  }
}

abstract class _SearchItem implements SearchItem {
  factory _SearchItem(
          {required final List<MangaCover> data,
          @JsonKey(name: "next_key") required final String? nextKey}) =
      _$SearchItemImpl;

  factory _SearchItem.fromJson(Map<String, dynamic> json) =
      _$SearchItemImpl.fromJson;

  @override // 当页结果
  List<MangaCover> get data;
  @override // 下一页的 key，为 null 则代表没有下一页
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  @JsonKey(ignore: true)
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
