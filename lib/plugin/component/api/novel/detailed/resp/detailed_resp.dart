

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/novel/novel_detailed/novel_detailed.dart';
import 'package:easy_mygo/entity/novel/novel_volume/novel_volume.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_resp.freezed.dart';
part 'detailed_resp.g.dart';

@freezed
class NovelDetailedResp with _$NovelDetailedResp {

  factory NovelDetailedResp({
    @Default(null) NovelDetailed? detailed,
    @Default(null) List<NovelVolume>? volumes,
    required ComponentPayload payload,
  }) = _NovelDetailedResp;

  factory NovelDetailedResp.fromJson(Map<String, Object?> json)
  => _$NovelDetailedRespFromJson(json);
}