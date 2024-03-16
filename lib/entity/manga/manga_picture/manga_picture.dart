

import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_picture.g.dart';
part 'manga_picture.freezed.dart';

/// 漫画某章节里的一页数据
/// parameter 为额外参数，最终会传给特定 type 的加载器

@freezed
class MangaPicture with _$MangaPicture {
  factory MangaPicture({
    // 图片 Url
    @Default("") String url,
    @Default(PictureLoadType.normal) PictureLoadType type,
    @Default({}) Map<String, String> parameter,

  }) = _MangaPicture;

  factory MangaPicture.fromJson(Map<String, Object?> json)
  => _$MangaPictureFromJson(json);
}