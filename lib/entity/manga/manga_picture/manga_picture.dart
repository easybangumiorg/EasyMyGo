

import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_picture.g.dart';
part 'manga_picture.freezed.dart';

enum PictureType {
  normal,
}

/// 漫画某章节里的一页数据
/// type 为加载类型，normal 为最普通的类型直接加载 url 的图片（包括网络或者本地文件）
/// parameter 为额外参数，最终会传给特定 type 的加载器
///
/// 后续可能会支持一些图片裁切之类的 type ？

@freezed
class MangaPicture with _$MangaPicture {
  factory MangaPicture({
    // 图片 Url
    @Default("") String url,
    @Default(PictureType.normal) PictureType type,
    @Default({}) Map<String, String> parameter,

  }) = _MangaPicture;

  factory MangaPicture.fromJson(Map<String, Object?> json)
  => _$MangaPictureFromJson(json);
}