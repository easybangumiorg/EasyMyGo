


import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_resp.g.dart';
part 'home_resp.freezed.dart';

/// 获取一级 tab
@freezed
class NovelGetHomeTabResp with _$NovelGetHomeTabResp {
  factory NovelGetHomeTabResp({
    @JsonKey(name: "tab_list")@Default(null) List<BookHomeTab>? tabList,
    required ComponentPayload payload,
  }) = _NovelGetHomeTabResp;

  factory NovelGetHomeTabResp.fromJson(Map<String, Object?> json)
  => _$NovelGetHomeTabRespFromJson(json);
}

/// 获取二级 tab
@freezed
class NovelGetSecondTabResp with _$NovelGetSecondTabResp {
  factory NovelGetSecondTabResp({
    @JsonKey(name: "tab_list")@Default(null) List<BookSecondTab>? tabList,
    required ComponentPayload payload,
  }) = _NovelGetSecondTabResp;

  factory NovelGetSecondTabResp.fromJson(Map<String, Object?> json)
  => _$NovelGetSecondTabRespFromJson(json);
}

/// 获取 tab 对应的 page
@freezed
class NovelGetHomePageResp with _$NovelGetHomePageResp {
  factory NovelGetHomePageResp({
    @JsonKey(name: 'page') @Default(null) NovelHomePage? page,
    required ComponentPayload payload,
  }) = _NovelGetHomePageResp;

  factory NovelGetHomePageResp.fromJson(Map<String, Object?> json)
  => _$NovelGetHomePageRespFromJson(json);
}

/// 加载 page 里某一页数据
@freezed
class NovelGetHomeCoverResp with _$NovelGetHomeCoverResp {
  factory NovelGetHomeCoverResp({
    @Default(null) List<NovelCover>? data,

    // 下一页的 key，如果为空则代表最后一页
    @JsonKey(name: "next_key") @Default(null) String? nextKey,
    required ComponentPayload payload,
  }) = _NovelGetHomeCoverResp;

  factory NovelGetHomeCoverResp.fromJson(Map<String, Object?> json)
  => _$NovelGetHomeCoverRespFromJson(json);
}