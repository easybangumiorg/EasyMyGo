import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_summary.g.dart';
part 'manga_summary.freezed.dart';

/// 决定一部漫画的最小单元

@freezed
class MangaSummary with _$MangaSummary {
  factory MangaSummary({
    // 必要信息
    required String source,
    required String id,

    // 额外字段
    @Default("") String ext,
  }) = _MangaSummary;

  factory MangaSummary.fromJson(Map<String, Object?> json) =>
      _$MangaSummaryFromJson(json);
}
