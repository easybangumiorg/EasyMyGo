import 'package:easy_mygo/entity/novel/novel_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'novel_chapter.freezed.dart';

part 'novel_chapter.g.dart';

@freezed
class NovelChapter with _$NovelChapter {
  factory NovelChapter({
    // 章节标题
    required String label,

    // 章节 id
    required String id,

    // 根据加载方式不同有不同含义
    required String src,

    // 加载方式
    @Default(NovelChapterLoadFrom.direct)
    @JsonKey(name: "load_from")
    NovelChapterLoadFrom loadFrom,

    // 加载类型
    @Default(NovelChapterLoadType.html)
    @JsonKey(name: "load_type")
    NovelChapterLoadType loadType,

    // 最终会传递给阅读器的参数，这里先预埋
    @Default({}) Map<String, String> parameter,
  }) = _NovelChapter;

  factory NovelChapter.fromJson(Map<String, Object?> json) =>
      _$NovelChapterFromJson(json);
}
