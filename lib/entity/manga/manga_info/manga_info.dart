
import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_info.g.dart';
part 'manga_info.freezed.dart';

/// 一部漫画在整个软件中的聚合，包括以下数据：
/// 来自插件：
/// MangaCover - 漫画封面，一般在首页或者搜索页展示
/// MangaDetailed - 漫画详细信息，一般在漫画详情页展示
///
/// 来自 纯纯 Mygo 本身的数据库：
/// 历史记录数据 - 包括记录时间、观看的位置（章节图片）、进度等
/// 加入书架的记录 - 包括加入时间、置顶时间、所属分类、自定义排序的字段
///
/// 来自业务需要
/// 本地的一些针对单部漫画的配置和缓存比如章节排序方式、章节列表缓存等

@freezed
class MangaInfo with _$MangaInfo {
  factory MangaInfo({

    // 必要信息
    required String source,
    required String id,

    // cover 信息
    required String label,
    required String cover,
    required String intro,
    required String jumpUrl,

    // detailed
    @Default(false) bool isDetailedLoad,
    @Default("") String genre,
    @Default("") String description,
    @Default(MangaUpdateStrategy.always) MangaUpdateStrategy updateStrategy,
    @Default(false) bool isUpdate,
    @Default(MangaStatus.unknown) MangaStatus status,

    // 本地存的一些配置
    @Default(0) int lastUpdateTime,
    @Default("") String sourceName,
    @Default(false) bool isReversal,
    @Default("") String sortKey,
    @Default([]) List<MangaChapter> chapterListTemp,

    // 历史记录数据
    @Default(0) int lastHistoryTime,

    @Default(0) int lastReadChapterCount,
    @Default("") String lastReadChapterId,
    @Default("") String lastReadChapterName,

    @Default(0) int lastReadChapterPageCount,
    @Default(0) int lastReadChapterPageIndex,

    // 加入书架的记录
    @Default(0) int starTime,
    @Default(-1) int pinTime,

    @Default([])List<String> tagsId,
    @Default("") String customOrder,

    // 由源维护的额外字段
    @Default("") String ext,


  }) = _MangaInfo;

  factory MangaInfo.fromJson(Map<String, Object?> json) =>
      _$MangaInfoFromJson(json);
}

extension MangaInfoExt on MangaInfo {

  static final _identifyValues = Expando<String>();
  String get identify {
    return _identifyValues[this] ??= "$id-|-$source";
  }

  static final _summaryValues = Expando<MangaSummary>();
  MangaSummary get mangaSummary {
    return _summaryValues[this] ??= MangaSummary(source: source, id: id);
  }

}
