
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_cover.g.dart';
part 'manga_cover.freezed.dart';

/// 漫画封面，一般在首页或者搜索页展示

@freezed
class MangaCover with _$MangaCover {

  factory MangaCover({

    required String id,

    // cover 信息
    required String label,
    required String cover,
    required String intro,

    @JsonKey(name: "jump_url")
    required String jumpUrl,

    // 必要信息，但是由 Component 填充
    @Default("") String source,

    // 额外字段
    @Default("") String ext,
  }) = _MangaCover;

  factory MangaCover.fromJson(Map<String, Object?> json) =>
      _$MangaCoverFromJson(json);
}

extension MangaCoverExt on MangaCover {

  static final _identifyValues = Expando<String>();
  String get identify {
    return _identifyValues[this] ??= "$id-|-$source";
  }

  static final _summaryValues = Expando<MangaSummary>();
  MangaSummary get mangaSummary {
    return _summaryValues[this] ??= MangaSummary(source: source, id: id);
  }

}
