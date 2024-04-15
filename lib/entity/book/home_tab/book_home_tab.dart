

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_home_tab.freezed.dart';
part 'book_home_tab.g.dart';

@freezed
class BookHomeTab with _$BookHomeTab {
  factory BookHomeTab({
    required String id,
    required String label,
    // 是否有 二级 tab
    @JsonKey(name: "has_second_tab") required bool hasSecondTab,

    // 可以让源透传一些信息
    @Default('') String ext,
  }) = _BookHomeTab;

  factory BookHomeTab.fromJson(Map<String, Object?> json) =>
      _$BookHomeTabFromJson(json);
}

@freezed
class BookSecondTab with _$BookSecondTab {
  factory BookSecondTab({
    required String id,
    required String label,

    // 可以让源透传一些信息
    @Default('') String ext,
  }) = _BookSecondTab;

  factory BookSecondTab.fromJson(Map<String, Object?> json) =>
      _$BookSecondTabFromJson(json);
}