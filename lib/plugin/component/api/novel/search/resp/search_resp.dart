import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_resp.g.dart';
part 'search_resp.freezed.dart';

@freezed
class NovelSearchResp with _$NovelSearchResp {
  factory NovelSearchResp({
    // 当页结果
    @Default(null) List<NovelCover>? data,

    // 下一页的 key，为 null 则代表没有下一页
    @Default(null) @JsonKey(name: "next_key") String? nextKey,
    required ComponentPayload payload,
  }) = _NovelSearchResp;

  factory NovelSearchResp.fromJson(Map<String, Object?> json) =>
      _$NovelSearchRespFromJson(json);
}
