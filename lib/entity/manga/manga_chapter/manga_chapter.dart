import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_chapter.freezed.dart';

part 'manga_chapter.g.dart';

@freezed
class MangaChapter with _$MangaChapter {
  factory MangaChapter({
    // 章节名称
    required String label,

    // 章节 Id
    required String id,

    // 展示类型
    @Default(ChapterShowType.normal)
    @JsonKey(name: "show_type")
    ChapterShowType showType,

    // 最终会传递给阅读器的参数，这里先预埋
    @Default({}) Map<String, String> parameter,

    // 交给源维护，可以用于透传一些东西
    @Default('') String ext,
  }) = _MangaChapter;

  factory MangaChapter.fromJson(Map<String, Object?> json) =>
      _$MangaChapterFromJson(json);
}
