
import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/entity/novel/novel_enum.dart';
import 'package:easy_mygo/entity/novel/novel_summary/novel_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel_detailed.g.dart';
part 'novel_detailed.freezed.dart';

/// 小说详细信息，一般在详情页展示

@freezed
class NovelDetailed with _$NovelDetailed {

  factory NovelDetailed({
    // 必要信息
    required String source,
    required String id,

    // cover 信息
    required String label,
    required String cover,
    required String intro,
    @JsonKey(name: "jump_url")  required String jumpUrl,

    // detailed
    @Default(false) @JsonKey(name: "is_detailed_load") bool isDetailedLoad,
    @Default("") String genre,
    @Default("") String description,
    @JsonKey(name: "update_strategy")  @Default(NovelUpdateStrategy.always) NovelUpdateStrategy updateStrategy,
    @Default(false) bool isUpdate,
    @Default(NovelStatus.unknown) NovelStatus status,

    // 额外字段
    @Default("") String ext,
  }) = _NovelDetailed;

  factory NovelDetailed.fromJson(Map<String, Object?> json) =>
      _$NovelDetailedFromJson(json);
}

extension MangaDetailedExt on NovelDetailed {

  static final _identifyValues = Expando<String>();
  String get identify {
    return _identifyValues[this] ??= "$id-|-$source";
  }

  static final _summaryValues = Expando<NovelSummary>();
  NovelSummary get mangaSummary {
    return _summaryValues[this] ??= NovelSummary(source: source, id: id);
  }

}
