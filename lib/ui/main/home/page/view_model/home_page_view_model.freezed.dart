// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) {
  return _HomePageState.fromJson(json);
}

/// @nodoc
mixin _$HomePageState {
  @JsonKey(name: "cover_list")
  List<BookCover> get coverList => throw _privateConstructorUsedError;
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  @JsonKey(name: "is_error")
  bool get isError => throw _privateConstructorUsedError;
  @JsonKey(name: "error_msg")
  String get errorMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {@JsonKey(name: "cover_list") List<BookCover> coverList,
      @JsonKey(name: "next_key") String? nextKey,
      @JsonKey(name: "is_error") bool isError,
      @JsonKey(name: "error_msg") String errorMsg});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coverList = null,
    Object? nextKey = freezed,
    Object? isError = null,
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      coverList: null == coverList
          ? _value.coverList
          : coverList // ignore: cast_nullable_to_non_nullable
              as List<BookCover>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cover_list") List<BookCover> coverList,
      @JsonKey(name: "next_key") String? nextKey,
      @JsonKey(name: "is_error") bool isError,
      @JsonKey(name: "error_msg") String errorMsg});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coverList = null,
    Object? nextKey = freezed,
    Object? isError = null,
    Object? errorMsg = null,
  }) {
    return _then(_$HomePageStateImpl(
      coverList: null == coverList
          ? _value._coverList
          : coverList // ignore: cast_nullable_to_non_nullable
              as List<BookCover>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomePageStateImpl implements _HomePageState {
  _$HomePageStateImpl(
      {@JsonKey(name: "cover_list") final List<BookCover> coverList = const [],
      @JsonKey(name: "next_key") this.nextKey = null,
      @JsonKey(name: "is_error") this.isError = false,
      @JsonKey(name: "error_msg") this.errorMsg = ""})
      : _coverList = coverList;

  factory _$HomePageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomePageStateImplFromJson(json);

  final List<BookCover> _coverList;
  @override
  @JsonKey(name: "cover_list")
  List<BookCover> get coverList {
    if (_coverList is EqualUnmodifiableListView) return _coverList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coverList);
  }

  @override
  @JsonKey(name: "next_key")
  final String? nextKey;
  @override
  @JsonKey(name: "is_error")
  final bool isError;
  @override
  @JsonKey(name: "error_msg")
  final String errorMsg;

  @override
  String toString() {
    return 'HomePageState(coverList: $coverList, nextKey: $nextKey, isError: $isError, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._coverList, _coverList) &&
            (identical(other.nextKey, nextKey) || other.nextKey == nextKey) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coverList),
      nextKey,
      isError,
      errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomePageStateImplToJson(
      this,
    );
  }
}

abstract class _HomePageState implements HomePageState {
  factory _HomePageState(
      {@JsonKey(name: "cover_list") final List<BookCover> coverList,
      @JsonKey(name: "next_key") final String? nextKey,
      @JsonKey(name: "is_error") final bool isError,
      @JsonKey(name: "error_msg") final String errorMsg}) = _$HomePageStateImpl;

  factory _HomePageState.fromJson(Map<String, dynamic> json) =
      _$HomePageStateImpl.fromJson;

  @override
  @JsonKey(name: "cover_list")
  List<BookCover> get coverList;
  @override
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  @JsonKey(name: "is_error")
  bool get isError;
  @override
  @JsonKey(name: "error_msg")
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
