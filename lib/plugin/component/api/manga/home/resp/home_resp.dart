

import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_resp.g.dart';
part 'home_resp.freezed.dart';

/// 获取一级 tab
@freezed
class MangaGetHomeTabResp with _$MangaGetHomeTabResp {
  factory MangaGetHomeTabResp({
    @JsonKey(name: "tab_list")@Default(null) List<MangaHomeTab>? tabList,
    required ComponentPayload payload,
  }) = _MangaGetHomeTabResp;

  factory MangaGetHomeTabResp.fromJson(Map<String, Object?> json)
  => _$MangaGetHomeTabRespFromJson(json);
}

/// 获取二级 tab
@freezed
class MangaGetSecondTabResp with _$MangaGetSecondTabResp {
  factory MangaGetSecondTabResp({
    @JsonKey(name: "tab_list")@Default(null) List<MangaHomeSecondTab>? tabList,
    required ComponentPayload payload,
  }) = _MangaGetSecondTabResp;

  factory MangaGetSecondTabResp.fromJson(Map<String, Object?> json)
  => _$MangaGetSecondTabRespFromJson(json);
}

/// 获取 tab 对应的 page
@freezed
class MangaGetHomePageResp with _$MangaGetHomePageResp {
  factory MangaGetHomePageResp({
    @Default(null) MangaHomePage? page,
    required ComponentPayload payload,
  }) = _MangaGetHomePageResp;

  factory MangaGetHomePageResp.fromJson(Map<String, Object?> json)
  => _$MangaGetHomePageRespFromJson(json);
}

/// 加载 page 里某一页数据
@freezed
class MangaGetHomeCoverResp with _$MangaGetHomeCoverResp {
  factory MangaGetHomeCoverResp({
    @Default(null) List<MangaCover>? data,

    // 下一页的 key，如果为空则代表最后一页
    @JsonKey(name: "next_key") @Default(null) String? nextKey,
    required ComponentPayload payload,
  }) = _MangaGetHomeCoverResp;

  factory MangaGetHomeCoverResp.fromJson(Map<String, Object?> json)
  => _$MangaGetHomeCoverRespFromJson(json);
}