

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_resp.freezed.dart';
part 'detailed_resp.g.dart';

@freezed
class DetailedResp with _$DetailedResp {

  factory DetailedResp({
    @Default(null) MangaDetailed? detailed,
    @Default(null) List<MangaChapter>? chapters,
    required ComponentPayload payload,
  }) = _DetailedResp;

  factory DetailedResp.fromJson(Map<String, Object?> json)
  => _$DetailedRespFromJson(json);
}