
import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_picture/manga_picture.dart';
import 'package:easy_mygo/entity/novel/novel_chapter/novel_chapter.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_resp.freezed.dart';
part 'read_resp.g.dart';

@freezed
class NovelReadResp with _$NovelReadResp {
  factory NovelReadResp({
    @Default(null) List<NovelChapter>? chapters,
    required ComponentPayload payload,
  }) = _NovelReadResp;

  factory NovelReadResp.fromJson(Map<String, Object?> json)
  => _$NovelReadRespFromJson(json);
}