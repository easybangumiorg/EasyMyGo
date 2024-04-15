// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelGetHomeTabResp _$NovelGetHomeTabRespFromJson(Map<String, dynamic> json) {
  return _NovelGetHomeTabResp.fromJson(json);
}

/// @nodoc
mixin _$NovelGetHomeTabResp {
  @JsonKey(name: "tab_list")
  List<BookHomeTab>? get tabList => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelGetHomeTabRespCopyWith<NovelGetHomeTabResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelGetHomeTabRespCopyWith<$Res> {
  factory $NovelGetHomeTabRespCopyWith(
          NovelGetHomeTabResp value, $Res Function(NovelGetHomeTabResp) then) =
      _$NovelGetHomeTabRespCopyWithImpl<$Res, NovelGetHomeTabResp>;
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<BookHomeTab>? tabList,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelGetHomeTabRespCopyWithImpl<$Res, $Val extends NovelGetHomeTabResp>
    implements $NovelGetHomeTabRespCopyWith<$Res> {
  _$NovelGetHomeTabRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      tabList: freezed == tabList
          ? _value.tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<BookHomeTab>?,
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
abstract class _$$NovelGetHomeTabRespImplCopyWith<$Res>
    implements $NovelGetHomeTabRespCopyWith<$Res> {
  factory _$$NovelGetHomeTabRespImplCopyWith(_$NovelGetHomeTabRespImpl value,
          $Res Function(_$NovelGetHomeTabRespImpl) then) =
      __$$NovelGetHomeTabRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<BookHomeTab>? tabList,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelGetHomeTabRespImplCopyWithImpl<$Res>
    extends _$NovelGetHomeTabRespCopyWithImpl<$Res, _$NovelGetHomeTabRespImpl>
    implements _$$NovelGetHomeTabRespImplCopyWith<$Res> {
  __$$NovelGetHomeTabRespImplCopyWithImpl(_$NovelGetHomeTabRespImpl _value,
      $Res Function(_$NovelGetHomeTabRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelGetHomeTabRespImpl(
      tabList: freezed == tabList
          ? _value._tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<BookHomeTab>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelGetHomeTabRespImpl implements _NovelGetHomeTabResp {
  _$NovelGetHomeTabRespImpl(
      {@JsonKey(name: "tab_list") final List<BookHomeTab>? tabList = null,
      required this.payload})
      : _tabList = tabList;

  factory _$NovelGetHomeTabRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelGetHomeTabRespImplFromJson(json);

  final List<BookHomeTab>? _tabList;
  @override
  @JsonKey(name: "tab_list")
  List<BookHomeTab>? get tabList {
    final value = _tabList;
    if (value == null) return null;
    if (_tabList is EqualUnmodifiableListView) return _tabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'NovelGetHomeTabResp(tabList: $tabList, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelGetHomeTabRespImpl &&
            const DeepCollectionEquality().equals(other._tabList, _tabList) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tabList), payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelGetHomeTabRespImplCopyWith<_$NovelGetHomeTabRespImpl> get copyWith =>
      __$$NovelGetHomeTabRespImplCopyWithImpl<_$NovelGetHomeTabRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelGetHomeTabRespImplToJson(
      this,
    );
  }
}

abstract class _NovelGetHomeTabResp implements NovelGetHomeTabResp {
  factory _NovelGetHomeTabResp(
      {@JsonKey(name: "tab_list") final List<BookHomeTab>? tabList,
      required final ComponentPayload payload}) = _$NovelGetHomeTabRespImpl;

  factory _NovelGetHomeTabResp.fromJson(Map<String, dynamic> json) =
      _$NovelGetHomeTabRespImpl.fromJson;

  @override
  @JsonKey(name: "tab_list")
  List<BookHomeTab>? get tabList;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$NovelGetHomeTabRespImplCopyWith<_$NovelGetHomeTabRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NovelGetSecondTabResp _$NovelGetSecondTabRespFromJson(
    Map<String, dynamic> json) {
  return _NovelGetSecondTabResp.fromJson(json);
}

/// @nodoc
mixin _$NovelGetSecondTabResp {
  @JsonKey(name: "tab_list")
  List<BookSecondTab>? get tabList => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelGetSecondTabRespCopyWith<NovelGetSecondTabResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelGetSecondTabRespCopyWith<$Res> {
  factory $NovelGetSecondTabRespCopyWith(NovelGetSecondTabResp value,
          $Res Function(NovelGetSecondTabResp) then) =
      _$NovelGetSecondTabRespCopyWithImpl<$Res, NovelGetSecondTabResp>;
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<BookSecondTab>? tabList,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelGetSecondTabRespCopyWithImpl<$Res,
        $Val extends NovelGetSecondTabResp>
    implements $NovelGetSecondTabRespCopyWith<$Res> {
  _$NovelGetSecondTabRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      tabList: freezed == tabList
          ? _value.tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<BookSecondTab>?,
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
abstract class _$$NovelGetSecondTabRespImplCopyWith<$Res>
    implements $NovelGetSecondTabRespCopyWith<$Res> {
  factory _$$NovelGetSecondTabRespImplCopyWith(
          _$NovelGetSecondTabRespImpl value,
          $Res Function(_$NovelGetSecondTabRespImpl) then) =
      __$$NovelGetSecondTabRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<BookSecondTab>? tabList,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelGetSecondTabRespImplCopyWithImpl<$Res>
    extends _$NovelGetSecondTabRespCopyWithImpl<$Res,
        _$NovelGetSecondTabRespImpl>
    implements _$$NovelGetSecondTabRespImplCopyWith<$Res> {
  __$$NovelGetSecondTabRespImplCopyWithImpl(_$NovelGetSecondTabRespImpl _value,
      $Res Function(_$NovelGetSecondTabRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelGetSecondTabRespImpl(
      tabList: freezed == tabList
          ? _value._tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<BookSecondTab>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelGetSecondTabRespImpl implements _NovelGetSecondTabResp {
  _$NovelGetSecondTabRespImpl(
      {@JsonKey(name: "tab_list") final List<BookSecondTab>? tabList = null,
      required this.payload})
      : _tabList = tabList;

  factory _$NovelGetSecondTabRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelGetSecondTabRespImplFromJson(json);

  final List<BookSecondTab>? _tabList;
  @override
  @JsonKey(name: "tab_list")
  List<BookSecondTab>? get tabList {
    final value = _tabList;
    if (value == null) return null;
    if (_tabList is EqualUnmodifiableListView) return _tabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'NovelGetSecondTabResp(tabList: $tabList, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelGetSecondTabRespImpl &&
            const DeepCollectionEquality().equals(other._tabList, _tabList) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tabList), payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelGetSecondTabRespImplCopyWith<_$NovelGetSecondTabRespImpl>
      get copyWith => __$$NovelGetSecondTabRespImplCopyWithImpl<
          _$NovelGetSecondTabRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelGetSecondTabRespImplToJson(
      this,
    );
  }
}

abstract class _NovelGetSecondTabResp implements NovelGetSecondTabResp {
  factory _NovelGetSecondTabResp(
      {@JsonKey(name: "tab_list") final List<BookSecondTab>? tabList,
      required final ComponentPayload payload}) = _$NovelGetSecondTabRespImpl;

  factory _NovelGetSecondTabResp.fromJson(Map<String, dynamic> json) =
      _$NovelGetSecondTabRespImpl.fromJson;

  @override
  @JsonKey(name: "tab_list")
  List<BookSecondTab>? get tabList;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$NovelGetSecondTabRespImplCopyWith<_$NovelGetSecondTabRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NovelGetHomePageResp _$NovelGetHomePageRespFromJson(Map<String, dynamic> json) {
  return _NovelGetHomePageResp.fromJson(json);
}

/// @nodoc
mixin _$NovelGetHomePageResp {
  @JsonKey(name: 'page')
  NovelHomePage? get page => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelGetHomePageRespCopyWith<NovelGetHomePageResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelGetHomePageRespCopyWith<$Res> {
  factory $NovelGetHomePageRespCopyWith(NovelGetHomePageResp value,
          $Res Function(NovelGetHomePageResp) then) =
      _$NovelGetHomePageRespCopyWithImpl<$Res, NovelGetHomePageResp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') NovelHomePage? page, ComponentPayload payload});

  $NovelHomePageCopyWith<$Res>? get page;
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelGetHomePageRespCopyWithImpl<$Res,
        $Val extends NovelGetHomePageResp>
    implements $NovelGetHomePageRespCopyWith<$Res> {
  _$NovelGetHomePageRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NovelHomePage?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NovelHomePageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $NovelHomePageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
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
abstract class _$$NovelGetHomePageRespImplCopyWith<$Res>
    implements $NovelGetHomePageRespCopyWith<$Res> {
  factory _$$NovelGetHomePageRespImplCopyWith(_$NovelGetHomePageRespImpl value,
          $Res Function(_$NovelGetHomePageRespImpl) then) =
      __$$NovelGetHomePageRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') NovelHomePage? page, ComponentPayload payload});

  @override
  $NovelHomePageCopyWith<$Res>? get page;
  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$NovelGetHomePageRespImplCopyWithImpl<$Res>
    extends _$NovelGetHomePageRespCopyWithImpl<$Res, _$NovelGetHomePageRespImpl>
    implements _$$NovelGetHomePageRespImplCopyWith<$Res> {
  __$$NovelGetHomePageRespImplCopyWithImpl(_$NovelGetHomePageRespImpl _value,
      $Res Function(_$NovelGetHomePageRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelGetHomePageRespImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NovelHomePage?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelGetHomePageRespImpl implements _NovelGetHomePageResp {
  _$NovelGetHomePageRespImpl(
      {@JsonKey(name: 'page') this.page = null, required this.payload});

  factory _$NovelGetHomePageRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelGetHomePageRespImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final NovelHomePage? page;
  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'NovelGetHomePageResp(page: $page, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelGetHomePageRespImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelGetHomePageRespImplCopyWith<_$NovelGetHomePageRespImpl>
      get copyWith =>
          __$$NovelGetHomePageRespImplCopyWithImpl<_$NovelGetHomePageRespImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelGetHomePageRespImplToJson(
      this,
    );
  }
}

abstract class _NovelGetHomePageResp implements NovelGetHomePageResp {
  factory _NovelGetHomePageResp(
      {@JsonKey(name: 'page') final NovelHomePage? page,
      required final ComponentPayload payload}) = _$NovelGetHomePageRespImpl;

  factory _NovelGetHomePageResp.fromJson(Map<String, dynamic> json) =
      _$NovelGetHomePageRespImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  NovelHomePage? get page;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$NovelGetHomePageRespImplCopyWith<_$NovelGetHomePageRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NovelGetHomeCoverResp _$NovelGetHomeCoverRespFromJson(
    Map<String, dynamic> json) {
  return _NovelGetHomeCoverResp.fromJson(json);
}

/// @nodoc
mixin _$NovelGetHomeCoverResp {
  List<NovelCover>? get data =>
      throw _privateConstructorUsedError; // 下一页的 key，如果为空则代表最后一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelGetHomeCoverRespCopyWith<NovelGetHomeCoverResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelGetHomeCoverRespCopyWith<$Res> {
  factory $NovelGetHomeCoverRespCopyWith(NovelGetHomeCoverResp value,
          $Res Function(NovelGetHomeCoverResp) then) =
      _$NovelGetHomeCoverRespCopyWithImpl<$Res, NovelGetHomeCoverResp>;
  @useResult
  $Res call(
      {List<NovelCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NovelGetHomeCoverRespCopyWithImpl<$Res,
        $Val extends NovelGetHomeCoverResp>
    implements $NovelGetHomeCoverRespCopyWith<$Res> {
  _$NovelGetHomeCoverRespCopyWithImpl(this._value, this._then);

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

  @override
  @pragma('vm:prefer-inline')
  $ComponentPayloadCopyWith<$Res> get payload {
    return $ComponentPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NovelGetHomeCoverRespImplCopyWith<$Res>
    implements $NovelGetHomeCoverRespCopyWith<$Res> {
  factory _$$NovelGetHomeCoverRespImplCopyWith(
          _$NovelGetHomeCoverRespImpl value,
          $Res Function(_$NovelGetHomeCoverRespImpl) then) =
      __$$NovelGetHomeCoverRespImplCopyWithImpl<$Res>;
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
class __$$NovelGetHomeCoverRespImplCopyWithImpl<$Res>
    extends _$NovelGetHomeCoverRespCopyWithImpl<$Res,
        _$NovelGetHomeCoverRespImpl>
    implements _$$NovelGetHomeCoverRespImplCopyWith<$Res> {
  __$$NovelGetHomeCoverRespImplCopyWithImpl(_$NovelGetHomeCoverRespImpl _value,
      $Res Function(_$NovelGetHomeCoverRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_$NovelGetHomeCoverRespImpl(
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
class _$NovelGetHomeCoverRespImpl implements _NovelGetHomeCoverResp {
  _$NovelGetHomeCoverRespImpl(
      {final List<NovelCover>? data = null,
      @JsonKey(name: "next_key") this.nextKey = null,
      required this.payload})
      : _data = data;

  factory _$NovelGetHomeCoverRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelGetHomeCoverRespImplFromJson(json);

  final List<NovelCover>? _data;
  @override
  @JsonKey()
  List<NovelCover>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// 下一页的 key，如果为空则代表最后一页
  @override
  @JsonKey(name: "next_key")
  final String? nextKey;
  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'NovelGetHomeCoverResp(data: $data, nextKey: $nextKey, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelGetHomeCoverRespImpl &&
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
  _$$NovelGetHomeCoverRespImplCopyWith<_$NovelGetHomeCoverRespImpl>
      get copyWith => __$$NovelGetHomeCoverRespImplCopyWithImpl<
          _$NovelGetHomeCoverRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelGetHomeCoverRespImplToJson(
      this,
    );
  }
}

abstract class _NovelGetHomeCoverResp implements NovelGetHomeCoverResp {
  factory _NovelGetHomeCoverResp(
      {final List<NovelCover>? data,
      @JsonKey(name: "next_key") final String? nextKey,
      required final ComponentPayload payload}) = _$NovelGetHomeCoverRespImpl;

  factory _NovelGetHomeCoverResp.fromJson(Map<String, dynamic> json) =
      _$NovelGetHomeCoverRespImpl.fromJson;

  @override
  List<NovelCover>? get data;
  @override // 下一页的 key，如果为空则代表最后一页
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$NovelGetHomeCoverRespImplCopyWith<_$NovelGetHomeCoverRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}
