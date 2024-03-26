import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_resp.g.dart';
part 'search_resp.freezed.dart';

@freezed
class SearchResp with _$SearchResp {

  factory SearchResp({
    // 当页结果
    @Default(null)  List<MangaCover>? data,

    // 下一页的 key，为 null 则代表没有下一页
    @Default(null) @JsonKey(name: "next_key") String? nextKey,
    required ComponentPayload payload,
  }) = _SearchResp;

  factory SearchResp.fromJson(Map<String, Object?> json) =>
      _$SearchRespFromJson(json);
}
