
import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_detailed.g.dart';
part 'manga_detailed.freezed.dart';

/// 漫画详细信息，一般在漫画详情页展示

@freezed
class MangaDetailed with _$MangaDetailed {

  factory MangaDetailed({
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
    @JsonKey(name: "update_strategy")  @Default(MangaUpdateStrategy.always) MangaUpdateStrategy updateStrategy,
    @Default(false) bool isUpdate,
    @Default(MangaStatus.unknown) MangaStatus status,

    // 额外字段
    @Default("") String ext,

    // 必要信息，但是由 Component 填充
    @Default("") String source,
}) = _MangaDetailed;

  factory MangaDetailed.fromJson(Map<String, Object?> json) =>
      _$MangaDetailedFromJson(json);
}

extension MangaDetailedExt on MangaDetailed {

  static final _identifyValues = Expando<String>();
  String get identify {
    return _identifyValues[this] ??= "$id-|-$source";
  }

  static final _summaryValues = Expando<MangaSummary>();
  MangaSummary get mangaSummary {
    return _summaryValues[this] ??= MangaSummary(source: source, id: id);
  }

}
