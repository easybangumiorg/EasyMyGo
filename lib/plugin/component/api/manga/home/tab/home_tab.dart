import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_tab.freezed.dart';
part 'home_tab.g.dart';


/// 一级 tab
@freezed
class MangaHomeTab with _$MangaHomeTab {
  factory MangaHomeTab({
    required String id,
    required String label,
    // 是否有 二级 tab
    @JsonKey(name: "has_second_tab") required bool hasSecondTab,

    // 是否需要跳转到新页面
    @JsonKey(name: "jump_page") @Default(false) bool jumpPage,

    // 可以让源透传一些信息
    @Default('') String ext,
  }) = _MangaHomeTab;

  factory MangaHomeTab.fromJson(Map<String, Object?> json) =>
      _$MangaHomeTabFromJson(json);
}

/// 二级 tab
@freezed
class MangaHomeSecondTab with _$MangaHomeSecondTab {
  factory MangaHomeSecondTab({
    required String id,
    required String label,
    @Default('') String ext,
  }) = _MangaHomeSecondTab;

  factory MangaHomeSecondTab.fromJson(Map<String, Object?> json) =>
      _$MangaHomeSecondTabFromJson(json);
}
