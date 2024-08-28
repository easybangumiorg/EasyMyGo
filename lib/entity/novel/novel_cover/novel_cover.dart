import 'package:easy_mygo/entity/novel/novel_summary/novel_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel_cover.g.dart';
part 'novel_cover.freezed.dart';

/// 小说封面，一般在首页或者搜索页展示

@freezed
class NovelCover with _$NovelCover {
  factory NovelCover({
    // 必要信息
    required String id,

    // cover 信息
    required String label,
    required String cover,
    required String intro,
    @JsonKey(name: "jump_url") required String jumpUrl,

    // 必要信息，但是由 Component 填充
    @Default("") String source,

    // 额外字段
    @Default("") String ext,
  }) = _NovelCover;

  factory NovelCover.fromJson(Map<String, Object?> json) =>
      _$NovelCoverFromJson(json);
}

extension MangaCoverExt on NovelCover {
  static final _identifyValues = Expando<String>();
  String get identify {
    return _identifyValues[this] ??= "$id-|-$source";
  }

  static final _summaryValues = Expando<NovelSummary>();
  NovelSummary get mangaSummary {
    return _summaryValues[this] ??= NovelSummary(source: source, id: id);
  }
}
