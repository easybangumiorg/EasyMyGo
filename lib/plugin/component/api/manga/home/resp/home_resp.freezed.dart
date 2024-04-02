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

MangaGetHomeTabResp _$MangaGetHomeTabRespFromJson(Map<String, dynamic> json) {
  return _MangaGetHomeTabResp.fromJson(json);
}

/// @nodoc
mixin _$MangaGetHomeTabResp {
  @JsonKey(name: "tab_list")
  List<MangaHomeTab>? get tabList => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaGetHomeTabRespCopyWith<MangaGetHomeTabResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaGetHomeTabRespCopyWith<$Res> {
  factory $MangaGetHomeTabRespCopyWith(
          MangaGetHomeTabResp value, $Res Function(MangaGetHomeTabResp) then) =
      _$MangaGetHomeTabRespCopyWithImpl<$Res, MangaGetHomeTabResp>;
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<MangaHomeTab>? tabList,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaGetHomeTabRespCopyWithImpl<$Res, $Val extends MangaGetHomeTabResp>
    implements $MangaGetHomeTabRespCopyWith<$Res> {
  _$MangaGetHomeTabRespCopyWithImpl(this._value, this._then);

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
              as List<MangaHomeTab>?,
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
abstract class _$$MangaGetHomeTabRespImplCopyWith<$Res>
    implements $MangaGetHomeTabRespCopyWith<$Res> {
  factory _$$MangaGetHomeTabRespImplCopyWith(_$MangaGetHomeTabRespImpl value,
          $Res Function(_$MangaGetHomeTabRespImpl) then) =
      __$$MangaGetHomeTabRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<MangaHomeTab>? tabList,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaGetHomeTabRespImplCopyWithImpl<$Res>
    extends _$MangaGetHomeTabRespCopyWithImpl<$Res, _$MangaGetHomeTabRespImpl>
    implements _$$MangaGetHomeTabRespImplCopyWith<$Res> {
  __$$MangaGetHomeTabRespImplCopyWithImpl(_$MangaGetHomeTabRespImpl _value,
      $Res Function(_$MangaGetHomeTabRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaGetHomeTabRespImpl(
      tabList: freezed == tabList
          ? _value._tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<MangaHomeTab>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaGetHomeTabRespImpl implements _MangaGetHomeTabResp {
  _$MangaGetHomeTabRespImpl(
      {@JsonKey(name: "tab_list") final List<MangaHomeTab>? tabList = null,
      required this.payload})
      : _tabList = tabList;

  factory _$MangaGetHomeTabRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaGetHomeTabRespImplFromJson(json);

  final List<MangaHomeTab>? _tabList;
  @override
  @JsonKey(name: "tab_list")
  List<MangaHomeTab>? get tabList {
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
    return 'MangaGetHomeTabResp(tabList: $tabList, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaGetHomeTabRespImpl &&
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
  _$$MangaGetHomeTabRespImplCopyWith<_$MangaGetHomeTabRespImpl> get copyWith =>
      __$$MangaGetHomeTabRespImplCopyWithImpl<_$MangaGetHomeTabRespImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaGetHomeTabRespImplToJson(
      this,
    );
  }
}

abstract class _MangaGetHomeTabResp implements MangaGetHomeTabResp {
  factory _MangaGetHomeTabResp(
      {@JsonKey(name: "tab_list") final List<MangaHomeTab>? tabList,
      required final ComponentPayload payload}) = _$MangaGetHomeTabRespImpl;

  factory _MangaGetHomeTabResp.fromJson(Map<String, dynamic> json) =
      _$MangaGetHomeTabRespImpl.fromJson;

  @override
  @JsonKey(name: "tab_list")
  List<MangaHomeTab>? get tabList;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaGetHomeTabRespImplCopyWith<_$MangaGetHomeTabRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaGetSecondTabResp _$MangaGetSecondTabRespFromJson(
    Map<String, dynamic> json) {
  return _MangaGetSecondTabResp.fromJson(json);
}

/// @nodoc
mixin _$MangaGetSecondTabResp {
  @JsonKey(name: "tab_list")
  List<MangaHomeSecondTab>? get tabList => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaGetSecondTabRespCopyWith<MangaGetSecondTabResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaGetSecondTabRespCopyWith<$Res> {
  factory $MangaGetSecondTabRespCopyWith(MangaGetSecondTabResp value,
          $Res Function(MangaGetSecondTabResp) then) =
      _$MangaGetSecondTabRespCopyWithImpl<$Res, MangaGetSecondTabResp>;
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<MangaHomeSecondTab>? tabList,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaGetSecondTabRespCopyWithImpl<$Res,
        $Val extends MangaGetSecondTabResp>
    implements $MangaGetSecondTabRespCopyWith<$Res> {
  _$MangaGetSecondTabRespCopyWithImpl(this._value, this._then);

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
              as List<MangaHomeSecondTab>?,
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
abstract class _$$MangaGetSecondTabRespImplCopyWith<$Res>
    implements $MangaGetSecondTabRespCopyWith<$Res> {
  factory _$$MangaGetSecondTabRespImplCopyWith(
          _$MangaGetSecondTabRespImpl value,
          $Res Function(_$MangaGetSecondTabRespImpl) then) =
      __$$MangaGetSecondTabRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tab_list") List<MangaHomeSecondTab>? tabList,
      ComponentPayload payload});

  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaGetSecondTabRespImplCopyWithImpl<$Res>
    extends _$MangaGetSecondTabRespCopyWithImpl<$Res,
        _$MangaGetSecondTabRespImpl>
    implements _$$MangaGetSecondTabRespImplCopyWith<$Res> {
  __$$MangaGetSecondTabRespImplCopyWithImpl(_$MangaGetSecondTabRespImpl _value,
      $Res Function(_$MangaGetSecondTabRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabList = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaGetSecondTabRespImpl(
      tabList: freezed == tabList
          ? _value._tabList
          : tabList // ignore: cast_nullable_to_non_nullable
              as List<MangaHomeSecondTab>?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaGetSecondTabRespImpl implements _MangaGetSecondTabResp {
  _$MangaGetSecondTabRespImpl(
      {@JsonKey(name: "tab_list")
      final List<MangaHomeSecondTab>? tabList = null,
      required this.payload})
      : _tabList = tabList;

  factory _$MangaGetSecondTabRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaGetSecondTabRespImplFromJson(json);

  final List<MangaHomeSecondTab>? _tabList;
  @override
  @JsonKey(name: "tab_list")
  List<MangaHomeSecondTab>? get tabList {
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
    return 'MangaGetSecondTabResp(tabList: $tabList, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaGetSecondTabRespImpl &&
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
  _$$MangaGetSecondTabRespImplCopyWith<_$MangaGetSecondTabRespImpl>
      get copyWith => __$$MangaGetSecondTabRespImplCopyWithImpl<
          _$MangaGetSecondTabRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaGetSecondTabRespImplToJson(
      this,
    );
  }
}

abstract class _MangaGetSecondTabResp implements MangaGetSecondTabResp {
  factory _MangaGetSecondTabResp(
      {@JsonKey(name: "tab_list") final List<MangaHomeSecondTab>? tabList,
      required final ComponentPayload payload}) = _$MangaGetSecondTabRespImpl;

  factory _MangaGetSecondTabResp.fromJson(Map<String, dynamic> json) =
      _$MangaGetSecondTabRespImpl.fromJson;

  @override
  @JsonKey(name: "tab_list")
  List<MangaHomeSecondTab>? get tabList;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaGetSecondTabRespImplCopyWith<_$MangaGetSecondTabRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MangaGetHomePageResp _$MangaGetHomePageRespFromJson(Map<String, dynamic> json) {
  return _MangaGetHomePageResp.fromJson(json);
}

/// @nodoc
mixin _$MangaGetHomePageResp {
  MangaHomePage? get page => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaGetHomePageRespCopyWith<MangaGetHomePageResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaGetHomePageRespCopyWith<$Res> {
  factory $MangaGetHomePageRespCopyWith(MangaGetHomePageResp value,
          $Res Function(MangaGetHomePageResp) then) =
      _$MangaGetHomePageRespCopyWithImpl<$Res, MangaGetHomePageResp>;
  @useResult
  $Res call({MangaHomePage? page, ComponentPayload payload});

  $MangaHomePageCopyWith<$Res>? get page;
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaGetHomePageRespCopyWithImpl<$Res,
        $Val extends MangaGetHomePageResp>
    implements $MangaGetHomePageRespCopyWith<$Res> {
  _$MangaGetHomePageRespCopyWithImpl(this._value, this._then);

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
              as MangaHomePage?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaHomePageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $MangaHomePageCopyWith<$Res>(_value.page!, (value) {
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
abstract class _$$MangaGetHomePageRespImplCopyWith<$Res>
    implements $MangaGetHomePageRespCopyWith<$Res> {
  factory _$$MangaGetHomePageRespImplCopyWith(_$MangaGetHomePageRespImpl value,
          $Res Function(_$MangaGetHomePageRespImpl) then) =
      __$$MangaGetHomePageRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MangaHomePage? page, ComponentPayload payload});

  @override
  $MangaHomePageCopyWith<$Res>? get page;
  @override
  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$MangaGetHomePageRespImplCopyWithImpl<$Res>
    extends _$MangaGetHomePageRespCopyWithImpl<$Res, _$MangaGetHomePageRespImpl>
    implements _$$MangaGetHomePageRespImplCopyWith<$Res> {
  __$$MangaGetHomePageRespImplCopyWithImpl(_$MangaGetHomePageRespImpl _value,
      $Res Function(_$MangaGetHomePageRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaGetHomePageRespImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MangaHomePage?,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ComponentPayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaGetHomePageRespImpl implements _MangaGetHomePageResp {
  _$MangaGetHomePageRespImpl({this.page = null, required this.payload});

  factory _$MangaGetHomePageRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaGetHomePageRespImplFromJson(json);

  @override
  @JsonKey()
  final MangaHomePage? page;
  @override
  final ComponentPayload payload;

  @override
  String toString() {
    return 'MangaGetHomePageResp(page: $page, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaGetHomePageRespImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaGetHomePageRespImplCopyWith<_$MangaGetHomePageRespImpl>
      get copyWith =>
          __$$MangaGetHomePageRespImplCopyWithImpl<_$MangaGetHomePageRespImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaGetHomePageRespImplToJson(
      this,
    );
  }
}

abstract class _MangaGetHomePageResp implements MangaGetHomePageResp {
  factory _MangaGetHomePageResp(
      {final MangaHomePage? page,
      required final ComponentPayload payload}) = _$MangaGetHomePageRespImpl;

  factory _MangaGetHomePageResp.fromJson(Map<String, dynamic> json) =
      _$MangaGetHomePageRespImpl.fromJson;

  @override
  MangaHomePage? get page;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaGetHomePageRespImplCopyWith<_$MangaGetHomePageRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MangaGetHomeCoverResp _$MangaGetHomeCoverRespFromJson(
    Map<String, dynamic> json) {
  return _MangaGetHomeCoverResp.fromJson(json);
}

/// @nodoc
mixin _$MangaGetHomeCoverResp {
  List<MangaCover>? get data =>
      throw _privateConstructorUsedError; // 下一页的 key，如果为空则代表最后一页
  @JsonKey(name: "next_key")
  String? get nextKey => throw _privateConstructorUsedError;
  ComponentPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaGetHomeCoverRespCopyWith<MangaGetHomeCoverResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaGetHomeCoverRespCopyWith<$Res> {
  factory $MangaGetHomeCoverRespCopyWith(MangaGetHomeCoverResp value,
          $Res Function(MangaGetHomeCoverResp) then) =
      _$MangaGetHomeCoverRespCopyWithImpl<$Res, MangaGetHomeCoverResp>;
  @useResult
  $Res call(
      {List<MangaCover>? data,
      @JsonKey(name: "next_key") String? nextKey,
      ComponentPayload payload});

  $ComponentPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$MangaGetHomeCoverRespCopyWithImpl<$Res,
        $Val extends MangaGetHomeCoverResp>
    implements $MangaGetHomeCoverRespCopyWith<$Res> {
  _$MangaGetHomeCoverRespCopyWithImpl(this._value, this._then);

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
abstract class _$$MangaGetHomeCoverRespImplCopyWith<$Res>
    implements $MangaGetHomeCoverRespCopyWith<$Res> {
  factory _$$MangaGetHomeCoverRespImplCopyWith(
          _$MangaGetHomeCoverRespImpl value,
          $Res Function(_$MangaGetHomeCoverRespImpl) then) =
      __$$MangaGetHomeCoverRespImplCopyWithImpl<$Res>;
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
class __$$MangaGetHomeCoverRespImplCopyWithImpl<$Res>
    extends _$MangaGetHomeCoverRespCopyWithImpl<$Res,
        _$MangaGetHomeCoverRespImpl>
    implements _$$MangaGetHomeCoverRespImplCopyWith<$Res> {
  __$$MangaGetHomeCoverRespImplCopyWithImpl(_$MangaGetHomeCoverRespImpl _value,
      $Res Function(_$MangaGetHomeCoverRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? nextKey = freezed,
    Object? payload = null,
  }) {
    return _then(_$MangaGetHomeCoverRespImpl(
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
class _$MangaGetHomeCoverRespImpl implements _MangaGetHomeCoverResp {
  _$MangaGetHomeCoverRespImpl(
      {final List<MangaCover>? data = null,
      @JsonKey(name: "next_key") this.nextKey = null,
      required this.payload})
      : _data = data;

  factory _$MangaGetHomeCoverRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaGetHomeCoverRespImplFromJson(json);

  final List<MangaCover>? _data;
  @override
  @JsonKey()
  List<MangaCover>? get data {
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
    return 'MangaGetHomeCoverResp(data: $data, nextKey: $nextKey, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaGetHomeCoverRespImpl &&
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
  _$$MangaGetHomeCoverRespImplCopyWith<_$MangaGetHomeCoverRespImpl>
      get copyWith => __$$MangaGetHomeCoverRespImplCopyWithImpl<
          _$MangaGetHomeCoverRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaGetHomeCoverRespImplToJson(
      this,
    );
  }
}

abstract class _MangaGetHomeCoverResp implements MangaGetHomeCoverResp {
  factory _MangaGetHomeCoverResp(
      {final List<MangaCover>? data,
      @JsonKey(name: "next_key") final String? nextKey,
      required final ComponentPayload payload}) = _$MangaGetHomeCoverRespImpl;

  factory _MangaGetHomeCoverResp.fromJson(Map<String, dynamic> json) =
      _$MangaGetHomeCoverRespImpl.fromJson;

  @override
  List<MangaCover>? get data;
  @override // 下一页的 key，如果为空则代表最后一页
  @JsonKey(name: "next_key")
  String? get nextKey;
  @override
  ComponentPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$MangaGetHomeCoverRespImplCopyWith<_$MangaGetHomeCoverRespImpl>
      get copyWith => throw _privateConstructorUsedError;
}
