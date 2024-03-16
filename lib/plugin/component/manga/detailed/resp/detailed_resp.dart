

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_resp.freezed.dart';
part 'detailed_resp.g.dart';

@freezed
class DetailedResp with _$DetailedResp {
  factory DetailedResp({
    required MangaDetailed detailed,
    @JsonKey(name: "detailed_code") @Default(0) int detailedCode,
    @JsonKey(name: "detailed_msg") @Default("") String detailedMsg,

    required List<MangaChapter> chapters,
    @JsonKey(name: "chapters_code") @Default(0) int chaptersCode,
    @JsonKey(name: "chapters_msg")@Default("") String chaptersMsg,
  }) = _DetailedResp;

  factory DetailedResp.fromJson(Map<String, Object?> json)
  => _$DetailedRespFromJson(json);
}