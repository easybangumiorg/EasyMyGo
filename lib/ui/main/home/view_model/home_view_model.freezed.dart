// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeViewState _$HomeViewStateFromJson(Map<String, dynamic> json) {
  return _HomeViewState.fromJson(json);
}

/// @nodoc
mixin _$HomeViewState {
  bool get loading => throw _privateConstructorUsedError;
  @JsonKey(name: "is_error")
  bool get isError => throw _privateConstructorUsedError;
  @JsonKey(name: "error_msg")
  String get errorMsg => throw _privateConstructorUsedError; // 所有源的 Identify
  @JsonKey(name: "source_identify_map")
  Map<SourceType, String> get sourceIdentifyMap =>
      throw _privateConstructorUsedError; // 当前选择源类型
  @JsonKey(name: "current_type")
  SourceType get currentType =>
      throw _privateConstructorUsedError; // 当前选择源 Identify
  @JsonKey(name: "current_source_identify")
  String get currentSourceIdentify =>
      throw _privateConstructorUsedError; // 所有一级 Tab
  @JsonKey(name: "home_tab_list")
  List<BookHomeTab> get bookTabList =>
      throw _privateConstructorUsedError; // 当前选择 tab
  @JsonKey(name: "current_home_tab")
  BookHomeTab? get currentHomeTab => throw _privateConstructorUsedError;

  /// Serializes this HomeViewState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call(
      {bool loading,
      @JsonKey(name: "is_error") bool isError,
      @JsonKey(name: "error_msg") String errorMsg,
      @JsonKey(name: "source_identify_map")
      Map<SourceType, String> sourceIdentifyMap,
      @JsonKey(name: "current_type") SourceType currentType,
      @JsonKey(name: "current_source_identify") String currentSourceIdentify,
      @JsonKey(name: "home_tab_list") List<BookHomeTab> bookTabList,
      @JsonKey(name: "current_home_tab") BookHomeTab? currentHomeTab});

  $BookHomeTabCopyWith<$Res>? get currentHomeTab;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isError = null,
    Object? errorMsg = null,
    Object? sourceIdentifyMap = null,
    Object? currentType = null,
    Object? currentSourceIdentify = null,
    Object? bookTabList = null,
    Object? currentHomeTab = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      sourceIdentifyMap: null == sourceIdentifyMap
          ? _value.sourceIdentifyMap
          : sourceIdentifyMap // ignore: cast_nullable_to_non_nullable
              as Map<SourceType, String>,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      currentSourceIdentify: null == currentSourceIdentify
          ? _value.currentSourceIdentify
          : currentSourceIdentify // ignore: cast_nullable_to_non_nullable
              as String,
      bookTabList: null == bookTabList
          ? _value.bookTabList
          : bookTabList // ignore: cast_nullable_to_non_nullable
              as List<BookHomeTab>,
      currentHomeTab: freezed == currentHomeTab
          ? _value.currentHomeTab
          : currentHomeTab // ignore: cast_nullable_to_non_nullable
              as BookHomeTab?,
    ) as $Val);
  }

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookHomeTabCopyWith<$Res>? get currentHomeTab {
    if (_value.currentHomeTab == null) {
      return null;
    }

    return $BookHomeTabCopyWith<$Res>(_value.currentHomeTab!, (value) {
      return _then(_value.copyWith(currentHomeTab: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      @JsonKey(name: "is_error") bool isError,
      @JsonKey(name: "error_msg") String errorMsg,
      @JsonKey(name: "source_identify_map")
      Map<SourceType, String> sourceIdentifyMap,
      @JsonKey(name: "current_type") SourceType currentType,
      @JsonKey(name: "current_source_identify") String currentSourceIdentify,
      @JsonKey(name: "home_tab_list") List<BookHomeTab> bookTabList,
      @JsonKey(name: "current_home_tab") BookHomeTab? currentHomeTab});

  @override
  $BookHomeTabCopyWith<$Res>? get currentHomeTab;
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isError = null,
    Object? errorMsg = null,
    Object? sourceIdentifyMap = null,
    Object? currentType = null,
    Object? currentSourceIdentify = null,
    Object? bookTabList = null,
    Object? currentHomeTab = freezed,
  }) {
    return _then(_$HomeViewStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      sourceIdentifyMap: null == sourceIdentifyMap
          ? _value._sourceIdentifyMap
          : sourceIdentifyMap // ignore: cast_nullable_to_non_nullable
              as Map<SourceType, String>,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      currentSourceIdentify: null == currentSourceIdentify
          ? _value.currentSourceIdentify
          : currentSourceIdentify // ignore: cast_nullable_to_non_nullable
              as String,
      bookTabList: null == bookTabList
          ? _value._bookTabList
          : bookTabList // ignore: cast_nullable_to_non_nullable
              as List<BookHomeTab>,
      currentHomeTab: freezed == currentHomeTab
          ? _value.currentHomeTab
          : currentHomeTab // ignore: cast_nullable_to_non_nullable
              as BookHomeTab?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeViewStateImpl implements _HomeViewState {
  _$HomeViewStateImpl(
      {this.loading = true,
      @JsonKey(name: "is_error") this.isError = false,
      @JsonKey(name: "error_msg") this.errorMsg = "",
      @JsonKey(name: "source_identify_map")
      final Map<SourceType, String> sourceIdentifyMap = const {},
      @JsonKey(name: "current_type") this.currentType = SourceType.manga,
      @JsonKey(name: "current_source_identify") this.currentSourceIdentify = "",
      @JsonKey(name: "home_tab_list")
      final List<BookHomeTab> bookTabList = const [],
      @JsonKey(name: "current_home_tab") this.currentHomeTab = null})
      : _sourceIdentifyMap = sourceIdentifyMap,
        _bookTabList = bookTabList;

  factory _$HomeViewStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeViewStateImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey(name: "is_error")
  final bool isError;
  @override
  @JsonKey(name: "error_msg")
  final String errorMsg;
// 所有源的 Identify
  final Map<SourceType, String> _sourceIdentifyMap;
// 所有源的 Identify
  @override
  @JsonKey(name: "source_identify_map")
  Map<SourceType, String> get sourceIdentifyMap {
    if (_sourceIdentifyMap is EqualUnmodifiableMapView)
      return _sourceIdentifyMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sourceIdentifyMap);
  }

// 当前选择源类型
  @override
  @JsonKey(name: "current_type")
  final SourceType currentType;
// 当前选择源 Identify
  @override
  @JsonKey(name: "current_source_identify")
  final String currentSourceIdentify;
// 所有一级 Tab
  final List<BookHomeTab> _bookTabList;
// 所有一级 Tab
  @override
  @JsonKey(name: "home_tab_list")
  List<BookHomeTab> get bookTabList {
    if (_bookTabList is EqualUnmodifiableListView) return _bookTabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookTabList);
  }

// 当前选择 tab
  @override
  @JsonKey(name: "current_home_tab")
  final BookHomeTab? currentHomeTab;

  @override
  String toString() {
    return 'HomeViewState(loading: $loading, isError: $isError, errorMsg: $errorMsg, sourceIdentifyMap: $sourceIdentifyMap, currentType: $currentType, currentSourceIdentify: $currentSourceIdentify, bookTabList: $bookTabList, currentHomeTab: $currentHomeTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality()
                .equals(other._sourceIdentifyMap, _sourceIdentifyMap) &&
            (identical(other.currentType, currentType) ||
                other.currentType == currentType) &&
            (identical(other.currentSourceIdentify, currentSourceIdentify) ||
                other.currentSourceIdentify == currentSourceIdentify) &&
            const DeepCollectionEquality()
                .equals(other._bookTabList, _bookTabList) &&
            (identical(other.currentHomeTab, currentHomeTab) ||
                other.currentHomeTab == currentHomeTab));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isError,
      errorMsg,
      const DeepCollectionEquality().hash(_sourceIdentifyMap),
      currentType,
      currentSourceIdentify,
      const DeepCollectionEquality().hash(_bookTabList),
      currentHomeTab);

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeViewStateImplToJson(
      this,
    );
  }
}

abstract class _HomeViewState implements HomeViewState {
  factory _HomeViewState(
      {final bool loading,
      @JsonKey(name: "is_error") final bool isError,
      @JsonKey(name: "error_msg") final String errorMsg,
      @JsonKey(name: "source_identify_map")
      final Map<SourceType, String> sourceIdentifyMap,
      @JsonKey(name: "current_type") final SourceType currentType,
      @JsonKey(name: "current_source_identify")
      final String currentSourceIdentify,
      @JsonKey(name: "home_tab_list") final List<BookHomeTab> bookTabList,
      @JsonKey(name: "current_home_tab")
      final BookHomeTab? currentHomeTab}) = _$HomeViewStateImpl;

  factory _HomeViewState.fromJson(Map<String, dynamic> json) =
      _$HomeViewStateImpl.fromJson;

  @override
  bool get loading;
  @override
  @JsonKey(name: "is_error")
  bool get isError;
  @override
  @JsonKey(name: "error_msg")
  String get errorMsg; // 所有源的 Identify
  @override
  @JsonKey(name: "source_identify_map")
  Map<SourceType, String> get sourceIdentifyMap; // 当前选择源类型
  @override
  @JsonKey(name: "current_type")
  SourceType get currentType; // 当前选择源 Identify
  @override
  @JsonKey(name: "current_source_identify")
  String get currentSourceIdentify; // 所有一级 Tab
  @override
  @JsonKey(name: "home_tab_list")
  List<BookHomeTab> get bookTabList; // 当前选择 tab
  @override
  @JsonKey(name: "current_home_tab")
  BookHomeTab? get currentHomeTab;

  /// Create a copy of HomeViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
