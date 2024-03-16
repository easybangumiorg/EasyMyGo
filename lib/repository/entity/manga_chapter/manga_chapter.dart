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

  }) = _MangaChapter;

  factory MangaChapter.fromJson(Map<String, Object?> json)
  => _$MangaChapterFromJson(json);
}