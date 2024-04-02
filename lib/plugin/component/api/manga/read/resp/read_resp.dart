
import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_picture/manga_picture.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_resp.freezed.dart';
part 'read_resp.g.dart';

@freezed
class MangaReadResp with _$MangaReadResp {
  factory MangaReadResp({
    @Default(null) List<MangaPicture>? pictures,
    required ComponentPayload payload,
  }) = _MangaReadResp;

  factory MangaReadResp.fromJson(Map<String, Object?> json)
  => _$MangaReadRespFromJson(json);
}