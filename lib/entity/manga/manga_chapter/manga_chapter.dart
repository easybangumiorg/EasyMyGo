import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_chapter.freezed.dart';
part 'manga_chapter.g.dart';

// 章节展示的类型
enum ChapterShowType {
  normal,         // 普通类型，一个 Chapter 分为多个 Picture
  singlePicture   // 单图片类型，一章只有一张大的 Picture，展示端需要适配（裁切或者只支持上下滑动模式）
}

@freezed
class MangaChapter with _$MangaChapter {
  factory MangaChapter({
    // 章节名称
    required String label,

    // 章节 Id
    required String id,

    // 展示类型
    @Default(ChapterShowType.normal) @JsonKey(name: "show_type") ChapterShowType showType,

    // 最终会传递给阅读器的参数，这里先预埋
    @Default({}) Map<String, String> parameter,

  }) = _MangaChapter;

  factory MangaChapter.fromJson(Map<String, Object?> json)
  => _$MangaChapterFromJson(json);
}