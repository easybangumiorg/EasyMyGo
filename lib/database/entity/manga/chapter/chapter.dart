import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  factory Chapter({
    // 章节名称
    required String label,

    // 章节 Id
    required String id,

  }) = _Chapter;

  factory Chapter.fromJson(Map<String, Object?> json)
  => _$ChapterFromJson(json);
}