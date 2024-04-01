
import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel_summary.g.dart';
part 'novel_summary.freezed.dart';

/// 决定一个小说的最小单元

@freezed
class NovelSummary with _$NovelSummary {

  factory NovelSummary({
    // 必要信息
    required String source,
    required String id,

    // 额外字段
    @Default("") String ext,
  }) = _NovelSummary;

  factory NovelSummary.fromJson(Map<String, Object?> json) =>
      _$NovelSummaryFromJson(json);
}