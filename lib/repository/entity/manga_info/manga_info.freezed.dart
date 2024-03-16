// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaInfo _$MangaInfoFromJson(Map<String, dynamic> json) {
  return _MangaInfo.fromJson(json);
}

/// @nodoc
mixin _$MangaInfo {
// 必要信息
  String get key => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // cover 信息
  String get label => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get jumpUrl => throw _privateConstructorUsedError; // detailed
  bool get isDetailedLoad => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get updateStrategy => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError; // 本地存的一些配置
  int get lastUpdateTime => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  bool get isReversal => throw _privateConstructorUsedError;
  String get sortKey => throw _privateConstructorUsedError;
  List<MangaChapter> get chapterListTemp =>
      throw _privateConstructorUsedError; // 历史记录数据
  int get lastHistoryTime => throw _privateConstructorUsedError;
  int get lastReadChapterCount => throw _privateConstructorUsedError;
  String get lastReadChapterId => throw _privateConstructorUsedError;
  String get lastReadChapterName => throw _privateConstructorUsedError;
  int get lastReadChapterPageCount => throw _privateConstructorUsedError;
  int get lastReadChapterPageIndex => throw _privateConstructorUsedError;
  int get starTime => throw _privateConstructorUsedError;
  int get pinTime => throw _privateConstructorUsedError;
  List<String> get tagsId => throw _privateConstructorUsedError;
  String get customOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaInfoCopyWith<MangaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaInfoCopyWith<$Res> {
  factory $MangaInfoCopyWith(MangaInfo value, $Res Function(MangaInfo) then) =
      _$MangaInfoCopyWithImpl<$Res, MangaInfo>;
  @useResult
  $Res call(
      {String key,
      String id,
      String label,
      String cover,
      String intro,
      String jumpUrl,
      bool isDetailedLoad,
      String genre,
      String description,
      int updateStrategy,
      bool isUpdate,
      int status,
      int lastUpdateTime,
      String sourceName,
      bool isReversal,
      String sortKey,
      List<MangaChapter> chapterListTemp,
      int lastHistoryTime,
      int lastReadChapterCount,
      String lastReadChapterId,
      String lastReadChapterName,
      int lastReadChapterPageCount,
      int lastReadChapterPageIndex,
      int starTime,
      int pinTime,
      List<String> tagsId,
      String customOrder});
}

/// @nodoc
class _$MangaInfoCopyWithImpl<$Res, $Val extends MangaInfo>
    implements $MangaInfoCopyWith<$Res> {
  _$MangaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? isDetailedLoad = null,
    Object? genre = null,
    Object? description = null,
    Object? updateStrategy = null,
    Object? isUpdate = null,
    Object? status = null,
    Object? lastUpdateTime = null,
    Object? sourceName = null,
    Object? isReversal = null,
    Object? sortKey = null,
    Object? chapterListTemp = null,
    Object? lastHistoryTime = null,
    Object? lastReadChapterCount = null,
    Object? lastReadChapterId = null,
    Object? lastReadChapterName = null,
    Object? lastReadChapterPageCount = null,
    Object? lastReadChapterPageIndex = null,
    Object? starTime = null,
    Object? pinTime = null,
    Object? tagsId = null,
    Object? customOrder = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      jumpUrl: null == jumpUrl
          ? _value.jumpUrl
          : jumpUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isDetailedLoad: null == isDetailedLoad
          ? _value.isDetailedLoad
          : isDetailedLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as int,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdateTime: null == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      isReversal: null == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool,
      sortKey: null == sortKey
          ? _value.sortKey
          : sortKey // ignore: cast_nullable_to_non_nullable
              as String,
      chapterListTemp: null == chapterListTemp
          ? _value.chapterListTemp
          : chapterListTemp // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>,
      lastHistoryTime: null == lastHistoryTime
          ? _value.lastHistoryTime
          : lastHistoryTime // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterCount: null == lastReadChapterCount
          ? _value.lastReadChapterCount
          : lastReadChapterCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterId: null == lastReadChapterId
          ? _value.lastReadChapterId
          : lastReadChapterId // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadChapterName: null == lastReadChapterName
          ? _value.lastReadChapterName
          : lastReadChapterName // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadChapterPageCount: null == lastReadChapterPageCount
          ? _value.lastReadChapterPageCount
          : lastReadChapterPageCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterPageIndex: null == lastReadChapterPageIndex
          ? _value.lastReadChapterPageIndex
          : lastReadChapterPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      starTime: null == starTime
          ? _value.starTime
          : starTime // ignore: cast_nullable_to_non_nullable
              as int,
      pinTime: null == pinTime
          ? _value.pinTime
          : pinTime // ignore: cast_nullable_to_non_nullable
              as int,
      tagsId: null == tagsId
          ? _value.tagsId
          : tagsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customOrder: null == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaInfoImplCopyWith<$Res>
    implements $MangaInfoCopyWith<$Res> {
  factory _$$MangaInfoImplCopyWith(
          _$MangaInfoImpl value, $Res Function(_$MangaInfoImpl) then) =
      __$$MangaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String id,
      String label,
      String cover,
      String intro,
      String jumpUrl,
      bool isDetailedLoad,
      String genre,
      String description,
      int updateStrategy,
      bool isUpdate,
      int status,
      int lastUpdateTime,
      String sourceName,
      bool isReversal,
      String sortKey,
      List<MangaChapter> chapterListTemp,
      int lastHistoryTime,
      int lastReadChapterCount,
      String lastReadChapterId,
      String lastReadChapterName,
      int lastReadChapterPageCount,
      int lastReadChapterPageIndex,
      int starTime,
      int pinTime,
      List<String> tagsId,
      String customOrder});
}

/// @nodoc
class __$$MangaInfoImplCopyWithImpl<$Res>
    extends _$MangaInfoCopyWithImpl<$Res, _$MangaInfoImpl>
    implements _$$MangaInfoImplCopyWith<$Res> {
  __$$MangaInfoImplCopyWithImpl(
      _$MangaInfoImpl _value, $Res Function(_$MangaInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? isDetailedLoad = null,
    Object? genre = null,
    Object? description = null,
    Object? updateStrategy = null,
    Object? isUpdate = null,
    Object? status = null,
    Object? lastUpdateTime = null,
    Object? sourceName = null,
    Object? isReversal = null,
    Object? sortKey = null,
    Object? chapterListTemp = null,
    Object? lastHistoryTime = null,
    Object? lastReadChapterCount = null,
    Object? lastReadChapterId = null,
    Object? lastReadChapterName = null,
    Object? lastReadChapterPageCount = null,
    Object? lastReadChapterPageIndex = null,
    Object? starTime = null,
    Object? pinTime = null,
    Object? tagsId = null,
    Object? customOrder = null,
  }) {
    return _then(_$MangaInfoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      jumpUrl: null == jumpUrl
          ? _value.jumpUrl
          : jumpUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isDetailedLoad: null == isDetailedLoad
          ? _value.isDetailedLoad
          : isDetailedLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as int,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdateTime: null == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      isReversal: null == isReversal
          ? _value.isReversal
          : isReversal // ignore: cast_nullable_to_non_nullable
              as bool,
      sortKey: null == sortKey
          ? _value.sortKey
          : sortKey // ignore: cast_nullable_to_non_nullable
              as String,
      chapterListTemp: null == chapterListTemp
          ? _value._chapterListTemp
          : chapterListTemp // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>,
      lastHistoryTime: null == lastHistoryTime
          ? _value.lastHistoryTime
          : lastHistoryTime // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterCount: null == lastReadChapterCount
          ? _value.lastReadChapterCount
          : lastReadChapterCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterId: null == lastReadChapterId
          ? _value.lastReadChapterId
          : lastReadChapterId // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadChapterName: null == lastReadChapterName
          ? _value.lastReadChapterName
          : lastReadChapterName // ignore: cast_nullable_to_non_nullable
              as String,
      lastReadChapterPageCount: null == lastReadChapterPageCount
          ? _value.lastReadChapterPageCount
          : lastReadChapterPageCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadChapterPageIndex: null == lastReadChapterPageIndex
          ? _value.lastReadChapterPageIndex
          : lastReadChapterPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      starTime: null == starTime
          ? _value.starTime
          : starTime // ignore: cast_nullable_to_non_nullable
              as int,
      pinTime: null == pinTime
          ? _value.pinTime
          : pinTime // ignore: cast_nullable_to_non_nullable
              as int,
      tagsId: null == tagsId
          ? _value._tagsId
          : tagsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      customOrder: null == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaInfoImpl implements _MangaInfo {
  _$MangaInfoImpl(
      {required this.key,
      required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      required this.jumpUrl,
      this.isDetailedLoad = false,
      this.genre = "",
      this.description = "",
      this.updateStrategy = 0,
      this.isUpdate = false,
      this.status = 0,
      this.lastUpdateTime = 0,
      this.sourceName = "",
      this.isReversal = false,
      this.sortKey = "",
      final List<MangaChapter> chapterListTemp = const [],
      this.lastHistoryTime = 0,
      this.lastReadChapterCount = 0,
      this.lastReadChapterId = "",
      this.lastReadChapterName = "",
      this.lastReadChapterPageCount = 0,
      this.lastReadChapterPageIndex = 0,
      this.starTime = 0,
      this.pinTime = -1,
      final List<String> tagsId = const [],
      this.customOrder = ""})
      : _chapterListTemp = chapterListTemp,
        _tagsId = tagsId;

  factory _$MangaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaInfoImplFromJson(json);

// 必要信息
  @override
  final String key;
  @override
  final String id;
// cover 信息
  @override
  final String label;
  @override
  final String cover;
  @override
  final String intro;
  @override
  final String jumpUrl;
// detailed
  @override
  @JsonKey()
  final bool isDetailedLoad;
  @override
  @JsonKey()
  final String genre;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int updateStrategy;
  @override
  @JsonKey()
  final bool isUpdate;
  @override
  @JsonKey()
  final int status;
// 本地存的一些配置
  @override
  @JsonKey()
  final int lastUpdateTime;
  @override
  @JsonKey()
  final String sourceName;
  @override
  @JsonKey()
  final bool isReversal;
  @override
  @JsonKey()
  final String sortKey;
  final List<MangaChapter> _chapterListTemp;
  @override
  @JsonKey()
  List<MangaChapter> get chapterListTemp {
    if (_chapterListTemp is EqualUnmodifiableListView) return _chapterListTemp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapterListTemp);
  }

// 历史记录数据
  @override
  @JsonKey()
  final int lastHistoryTime;
  @override
  @JsonKey()
  final int lastReadChapterCount;
  @override
  @JsonKey()
  final String lastReadChapterId;
  @override
  @JsonKey()
  final String lastReadChapterName;
  @override
  @JsonKey()
  final int lastReadChapterPageCount;
  @override
  @JsonKey()
  final int lastReadChapterPageIndex;
  @override
  @JsonKey()
  final int starTime;
  @override
  @JsonKey()
  final int pinTime;
  final List<String> _tagsId;
  @override
  @JsonKey()
  List<String> get tagsId {
    if (_tagsId is EqualUnmodifiableListView) return _tagsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagsId);
  }

  @override
  @JsonKey()
  final String customOrder;

  @override
  String toString() {
    return 'MangaInfo(key: $key, id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, isDetailedLoad: $isDetailedLoad, genre: $genre, description: $description, updateStrategy: $updateStrategy, isUpdate: $isUpdate, status: $status, lastUpdateTime: $lastUpdateTime, sourceName: $sourceName, isReversal: $isReversal, sortKey: $sortKey, chapterListTemp: $chapterListTemp, lastHistoryTime: $lastHistoryTime, lastReadChapterCount: $lastReadChapterCount, lastReadChapterId: $lastReadChapterId, lastReadChapterName: $lastReadChapterName, lastReadChapterPageCount: $lastReadChapterPageCount, lastReadChapterPageIndex: $lastReadChapterPageIndex, starTime: $starTime, pinTime: $pinTime, tagsId: $tagsId, customOrder: $customOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaInfoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.jumpUrl, jumpUrl) || other.jumpUrl == jumpUrl) &&
            (identical(other.isDetailedLoad, isDetailedLoad) ||
                other.isDetailedLoad == isDetailedLoad) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updateStrategy, updateStrategy) ||
                other.updateStrategy == updateStrategy) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.isReversal, isReversal) ||
                other.isReversal == isReversal) &&
            (identical(other.sortKey, sortKey) || other.sortKey == sortKey) &&
            const DeepCollectionEquality()
                .equals(other._chapterListTemp, _chapterListTemp) &&
            (identical(other.lastHistoryTime, lastHistoryTime) ||
                other.lastHistoryTime == lastHistoryTime) &&
            (identical(other.lastReadChapterCount, lastReadChapterCount) ||
                other.lastReadChapterCount == lastReadChapterCount) &&
            (identical(other.lastReadChapterId, lastReadChapterId) ||
                other.lastReadChapterId == lastReadChapterId) &&
            (identical(other.lastReadChapterName, lastReadChapterName) ||
                other.lastReadChapterName == lastReadChapterName) &&
            (identical(
                    other.lastReadChapterPageCount, lastReadChapterPageCount) ||
                other.lastReadChapterPageCount == lastReadChapterPageCount) &&
            (identical(
                    other.lastReadChapterPageIndex, lastReadChapterPageIndex) ||
                other.lastReadChapterPageIndex == lastReadChapterPageIndex) &&
            (identical(other.starTime, starTime) ||
                other.starTime == starTime) &&
            (identical(other.pinTime, pinTime) || other.pinTime == pinTime) &&
            const DeepCollectionEquality().equals(other._tagsId, _tagsId) &&
            (identical(other.customOrder, customOrder) ||
                other.customOrder == customOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        id,
        label,
        cover,
        intro,
        jumpUrl,
        isDetailedLoad,
        genre,
        description,
        updateStrategy,
        isUpdate,
        status,
        lastUpdateTime,
        sourceName,
        isReversal,
        sortKey,
        const DeepCollectionEquality().hash(_chapterListTemp),
        lastHistoryTime,
        lastReadChapterCount,
        lastReadChapterId,
        lastReadChapterName,
        lastReadChapterPageCount,
        lastReadChapterPageIndex,
        starTime,
        pinTime,
        const DeepCollectionEquality().hash(_tagsId),
        customOrder
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaInfoImplCopyWith<_$MangaInfoImpl> get copyWith =>
      __$$MangaInfoImplCopyWithImpl<_$MangaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaInfoImplToJson(
      this,
    );
  }
}

abstract class _MangaInfo implements MangaInfo {
  factory _MangaInfo(
      {required final String key,
      required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      required final String jumpUrl,
      final bool isDetailedLoad,
      final String genre,
      final String description,
      final int updateStrategy,
      final bool isUpdate,
      final int status,
      final int lastUpdateTime,
      final String sourceName,
      final bool isReversal,
      final String sortKey,
      final List<MangaChapter> chapterListTemp,
      final int lastHistoryTime,
      final int lastReadChapterCount,
      final String lastReadChapterId,
      final String lastReadChapterName,
      final int lastReadChapterPageCount,
      final int lastReadChapterPageIndex,
      final int starTime,
      final int pinTime,
      final List<String> tagsId,
      final String customOrder}) = _$MangaInfoImpl;

  factory _MangaInfo.fromJson(Map<String, dynamic> json) =
      _$MangaInfoImpl.fromJson;

  @override // 必要信息
  String get key;
  @override
  String get id;
  @override // cover 信息
  String get label;
  @override
  String get cover;
  @override
  String get intro;
  @override
  String get jumpUrl;
  @override // detailed
  bool get isDetailedLoad;
  @override
  String get genre;
  @override
  String get description;
  @override
  int get updateStrategy;
  @override
  bool get isUpdate;
  @override
  int get status;
  @override // 本地存的一些配置
  int get lastUpdateTime;
  @override
  String get sourceName;
  @override
  bool get isReversal;
  @override
  String get sortKey;
  @override
  List<MangaChapter> get chapterListTemp;
  @override // 历史记录数据
  int get lastHistoryTime;
  @override
  int get lastReadChapterCount;
  @override
  String get lastReadChapterId;
  @override
  String get lastReadChapterName;
  @override
  int get lastReadChapterPageCount;
  @override
  int get lastReadChapterPageIndex;
  @override
  int get starTime;
  @override
  int get pinTime;
  @override
  List<String> get tagsId;
  @override
  String get customOrder;
  @override
  @JsonKey(ignore: true)
  _$$MangaInfoImplCopyWith<_$MangaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
