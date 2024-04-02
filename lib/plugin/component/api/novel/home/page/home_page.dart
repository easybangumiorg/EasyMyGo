

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page.freezed.dart';
part 'home_page.g.dart';

@freezed
class NovelHomePage with _$NovelHomePage {
  factory NovelHomePage({
    required String id,
    required String label,
    // 是否有 封面
    @JsonKey(name: "has_cover") @Default(true) bool hasCover,

    // 初始页面 key
    @JsonKey(name: "init_key") @Default('') String initKey,

    // 可以让源透传一些信息
    @Default('') String ext,
  }) = _NovelHomePage;

  factory NovelHomePage.fromJson(Map<String, Object?> json) =>
      _$NovelHomePageFromJson(json);
}