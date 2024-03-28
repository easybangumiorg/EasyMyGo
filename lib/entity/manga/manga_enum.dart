
enum MangaStatus {
  ongoing,
  complete,
  unknown
}

enum MangaUpdateStrategy {
  always,
  onlyStrict,
  never
}

// 章节展示的类型
enum ChapterShowType {
  normal,         // 普通类型，一个 Chapter 分为多个 Picture
  singlePicture   // 单图片类型，一章只有一张大的 Picture，展示端需要适配（裁切或者只支持上下滑动模式）
}

// 图片加载类型，后续可能添加裁切功能？
enum PictureLoadType {
  normal,         // 普通类型，直接加载 MangaPicture 中 url 的图片（网络或本地）
}