
import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_cover.g.dart';
part 'book_cover.freezed.dart';

// 一本书的封面，主要是把 MangaCover 和 NovelCover 合并一波
// 在封面显示
@freezed
class BookCover with _$BookCover {

  factory BookCover({
    required SourceType type,
    required String id,
    required String label,
    required String cover,
    required String intro,
    @JsonKey(name: "jump_url") required String jumpUrl,
    required String source,
    required String ext,
}) = _BookCover;

  factory BookCover.fromJson(Map<String, dynamic> json) => _$BookCoverFromJson(json);

  factory BookCover.fromNovelCover(NovelCover novelCover) {
    return BookCover(
      type: SourceType.novel,
      id: novelCover.id,
      label: novelCover.label,
      cover: novelCover.cover,
      intro: novelCover.intro,
      jumpUrl: novelCover.jumpUrl,
      source: novelCover.source,
      ext: novelCover.ext,
    );
  }

  factory BookCover.fromMangaCover(MangaCover mangaCover) {
    return BookCover(
      type: SourceType.manga,
      id: mangaCover.id,
      label: mangaCover.label,
      cover: mangaCover.cover,
      intro: mangaCover.intro,
      jumpUrl: mangaCover.jumpUrl,
      source: mangaCover.source,
      ext: mangaCover.ext,
    );
  }

}