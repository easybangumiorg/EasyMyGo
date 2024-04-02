

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_resp.freezed.dart';
part 'detailed_resp.g.dart';

@freezed
class MangaDetailedResp with _$MangaDetailedResp {

  factory MangaDetailedResp({
    @Default(null) MangaDetailed? detailed,
    @Default(null) List<MangaChapter>? chapters,
    required ComponentPayload payload,
  }) = _MangaDetailedResp;

  factory MangaDetailedResp.fromJson(Map<String, Object?> json)
  => _$MangaDetailedRespFromJson(json);
}