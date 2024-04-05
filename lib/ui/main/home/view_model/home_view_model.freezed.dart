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
  String get errorMsg => throw _privateConstructorUsedError; // 所有漫画首页源和一级 tab
  @JsonKey(name: "manga_source_list")
  List<String> get mangaSourceList => throw _privateConstructorUsedError;
  @JsonKey(name: "manga_tab_list")
  List<MangaHomeTab> get mangaTabList =>
      throw _privateConstructorUsedError; // 所有小说首页源和一级 tab
  @JsonKey(name: "novel_source_list")
  List<String> get novelSourceList => throw _privateConstructorUsedError;
  @JsonKey(name: "novel_tab_list")
  List<NovelHomeTab> get novelTabList =>
      throw _privateConstructorUsedError; // 当前选择类型，只有对应类型的一级 tab 有值
  @JsonKey(name: "current_type")
  SourceType get currentType =>
      throw _privateConstructorUsedError; // 当前选择一级 tab 下标
  @JsonKey(name: "current_source_index")
  int get currentSourceIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: "manga_source_list") List<String> mangaSourceList,
      @JsonKey(name: "manga_tab_list") List<MangaHomeTab> mangaTabList,
      @JsonKey(name: "novel_source_list") List<String> novelSourceList,
      @JsonKey(name: "novel_tab_list") List<NovelHomeTab> novelTabList,
      @JsonKey(name: "current_type") SourceType currentType,
      @JsonKey(name: "current_source_index") int currentSourceIndex});
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isError = null,
    Object? errorMsg = null,
    Object? mangaSourceList = null,
    Object? mangaTabList = null,
    Object? novelSourceList = null,
    Object? novelTabList = null,
    Object? currentType = null,
    Object? currentSourceIndex = null,
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
      mangaSourceList: null == mangaSourceList
          ? _value.mangaSourceList
          : mangaSourceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mangaTabList: null == mangaTabList
          ? _value.mangaTabList
          : mangaTabList // ignore: cast_nullable_to_non_nullable
              as List<MangaHomeTab>,
      novelSourceList: null == novelSourceList
          ? _value.novelSourceList
          : novelSourceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      novelTabList: null == novelTabList
          ? _value.novelTabList
          : novelTabList // ignore: cast_nullable_to_non_nullable
              as List<NovelHomeTab>,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      currentSourceIndex: null == currentSourceIndex
          ? _value.currentSourceIndex
          : currentSourceIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
      @JsonKey(name: "manga_source_list") List<String> mangaSourceList,
      @JsonKey(name: "manga_tab_list") List<MangaHomeTab> mangaTabList,
      @JsonKey(name: "novel_source_list") List<String> novelSourceList,
      @JsonKey(name: "novel_tab_list") List<NovelHomeTab> novelTabList,
      @JsonKey(name: "current_type") SourceType currentType,
      @JsonKey(name: "current_source_index") int currentSourceIndex});
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? isError = null,
    Object? errorMsg = null,
    Object? mangaSourceList = null,
    Object? mangaTabList = null,
    Object? novelSourceList = null,
    Object? novelTabList = null,
    Object? currentType = null,
    Object? currentSourceIndex = null,
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
      mangaSourceList: null == mangaSourceList
          ? _value._mangaSourceList
          : mangaSourceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mangaTabList: null == mangaTabList
          ? _value._mangaTabList
          : mangaTabList // ignore: cast_nullable_to_non_nullable
              as List<MangaHomeTab>,
      novelSourceList: null == novelSourceList
          ? _value._novelSourceList
          : novelSourceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      novelTabList: null == novelTabList
          ? _value._novelTabList
          : novelTabList // ignore: cast_nullable_to_non_nullable
              as List<NovelHomeTab>,
      currentType: null == currentType
          ? _value.currentType
          : currentType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      currentSourceIndex: null == currentSourceIndex
          ? _value.currentSourceIndex
          : currentSourceIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: "manga_source_list")
      final List<String> mangaSourceList = const [],
      @JsonKey(name: "manga_tab_list")
      final List<MangaHomeTab> mangaTabList = const [],
      @JsonKey(name: "novel_source_list")
      final List<String> novelSourceList = const [],
      @JsonKey(name: "novel_tab_list")
      final List<NovelHomeTab> novelTabList = const [],
      @JsonKey(name: "current_type") this.currentType = SourceType.manga,
      @JsonKey(name: "current_source_index") this.currentSourceIndex = 0})
      : _mangaSourceList = mangaSourceList,
        _mangaTabList = mangaTabList,
        _novelSourceList = novelSourceList,
        _novelTabList = novelTabList;

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
// 所有漫画首页源和一级 tab
  final List<String> _mangaSourceList;
// 所有漫画首页源和一级 tab
  @override
  @JsonKey(name: "manga_source_list")
  List<String> get mangaSourceList {
    if (_mangaSourceList is EqualUnmodifiableListView) return _mangaSourceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangaSourceList);
  }

  final List<MangaHomeTab> _mangaTabList;
  @override
  @JsonKey(name: "manga_tab_list")
  List<MangaHomeTab> get mangaTabList {
    if (_mangaTabList is EqualUnmodifiableListView) return _mangaTabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangaTabList);
  }

// 所有小说首页源和一级 tab
  final List<String> _novelSourceList;
// 所有小说首页源和一级 tab
  @override
  @JsonKey(name: "novel_source_list")
  List<String> get novelSourceList {
    if (_novelSourceList is EqualUnmodifiableListView) return _novelSourceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novelSourceList);
  }

  final List<NovelHomeTab> _novelTabList;
  @override
  @JsonKey(name: "novel_tab_list")
  List<NovelHomeTab> get novelTabList {
    if (_novelTabList is EqualUnmodifiableListView) return _novelTabList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novelTabList);
  }

// 当前选择类型，只有对应类型的一级 tab 有值
  @override
  @JsonKey(name: "current_type")
  final SourceType currentType;
// 当前选择一级 tab 下标
  @override
  @JsonKey(name: "current_source_index")
  final int currentSourceIndex;

  @override
  String toString() {
    return 'HomeViewState(loading: $loading, isError: $isError, errorMsg: $errorMsg, mangaSourceList: $mangaSourceList, mangaTabList: $mangaTabList, novelSourceList: $novelSourceList, novelTabList: $novelTabList, currentType: $currentType, currentSourceIndex: $currentSourceIndex)';
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
                .equals(other._mangaSourceList, _mangaSourceList) &&
            const DeepCollectionEquality()
                .equals(other._mangaTabList, _mangaTabList) &&
            const DeepCollectionEquality()
                .equals(other._novelSourceList, _novelSourceList) &&
            const DeepCollectionEquality()
                .equals(other._novelTabList, _novelTabList) &&
            (identical(other.currentType, currentType) ||
                other.currentType == currentType) &&
            (identical(other.currentSourceIndex, currentSourceIndex) ||
                other.currentSourceIndex == currentSourceIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      isError,
      errorMsg,
      const DeepCollectionEquality().hash(_mangaSourceList),
      const DeepCollectionEquality().hash(_mangaTabList),
      const DeepCollectionEquality().hash(_novelSourceList),
      const DeepCollectionEquality().hash(_novelTabList),
      currentType,
      currentSourceIndex);

  @JsonKey(ignore: true)
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
      @JsonKey(name: "manga_source_list") final List<String> mangaSourceList,
      @JsonKey(name: "manga_tab_list") final List<MangaHomeTab> mangaTabList,
      @JsonKey(name: "novel_source_list") final List<String> novelSourceList,
      @JsonKey(name: "novel_tab_list") final List<NovelHomeTab> novelTabList,
      @JsonKey(name: "current_type") final SourceType currentType,
      @JsonKey(name: "current_source_index")
      final int currentSourceIndex}) = _$HomeViewStateImpl;

  factory _HomeViewState.fromJson(Map<String, dynamic> json) =
      _$HomeViewStateImpl.fromJson;

  @override
  bool get loading;
  @override
  @JsonKey(name: "is_error")
  bool get isError;
  @override
  @JsonKey(name: "error_msg")
  String get errorMsg;
  @override // 所有漫画首页源和一级 tab
  @JsonKey(name: "manga_source_list")
  List<String> get mangaSourceList;
  @override
  @JsonKey(name: "manga_tab_list")
  List<MangaHomeTab> get mangaTabList;
  @override // 所有小说首页源和一级 tab
  @JsonKey(name: "novel_source_list")
  List<String> get novelSourceList;
  @override
  @JsonKey(name: "novel_tab_list")
  List<NovelHomeTab> get novelTabList;
  @override // 当前选择类型，只有对应类型的一级 tab 有值
  @JsonKey(name: "current_type")
  SourceType get currentType;
  @override // 当前选择一级 tab 下标
  @JsonKey(name: "current_source_index")
  int get currentSourceIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
