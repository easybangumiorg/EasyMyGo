
import 'package:easy_mygo/repository/entity/manga_chapter/manga_chapter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_info.g.dart';
part 'manga_info.freezed.dart';

@freezed
class MangaInfo with _$MangaInfo {
  factory MangaInfo({

    // 必要信息
    required String key,
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
    @Default(0) int updateStrategy,
    @Default(false) bool isUpdate,
    @Default(0) int status,

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
    @Default("") String customOrder


  }) = _MangaInfo;

  factory MangaInfo.fromJson(Map<String, Object?> json) =>
      _$MangaInfoFromJson(json);
}

extension MangaInfoExt on MangaInfo {

  static final _identifyValues = Expando<String>();

  String get identify {
    return _identifyValues[this] ??= "$id-|~|-$key";
  }

}
