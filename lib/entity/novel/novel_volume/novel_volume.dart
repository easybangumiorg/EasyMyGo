import 'package:easy_mygo/entity/novel/novel_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel_volume.freezed.dart';

part 'novel_volume.g.dart';

@freezed
class NovelVolume with _$NovelVolume {
  factory NovelVolume({
    // 卷名称
    required String label,

    // 卷 id
    required String id,

    // 组织形式
    @Default(NovelVolumeOrganizeType.multiChapter)
    @JsonKey(name: "organize_type")
    organizeType,

    // 最终会传递给阅读器的参数，这里先预埋
    @Default({}) Map<String, String> parameter,

    // 交给源维护，可以用于透传一些东西
    @Default('') String ext,
  }) = _NovelVolume;

  factory NovelVolume.fromJson(Map<String, Object?> json) =>
      _$NovelVolumeFromJson(json);
}
