import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_resp.g.dart';
part 'search_resp.freezed.dart';

@freezed
class SearchResp with _$SearchResp {

  factory SearchResp({
    // 当页结果
    required List<MangaCover> data,

    // 下一页的 key，为 null 则代表没有下一页
    @JsonKey(name: "next_key") required  String? nextKey,

    @Default(0) int code,
    @Default("") String msg,


  }) = _SearchResp;

  factory SearchResp.fromJson(Map<String, Object?> json) =>
      _$SearchRespFromJson(json);
}
