enum NovelStatus {
  ongoing,
  complete,
  unknown,
}

enum NovelUpdateStrategy {
  // 总是检查更新，一般用于连载中
  always,
  // 只有严格模式（手动触发全体更新）才更新
  onlyStrict,
  // 永不更新
  never
}

enum NovelVolumeOrganizeType {
  // 最终返回的 List<Chapter> 是一个一个章节，一般用于 web 版，
  // 一个 Chapter 最终会被缓存成一个 txt，业务需要打包多个 txt 后再输入阅读器
  multiChapter,

  // 最终返回的 List<Chapter> 中只有一个 Chapter，
  // 一般用于 文库版，比如 epub 等电子书文件格式，Chapter 由文件本身区分
  singleChapter,
}

// 加载方式
// url 文件或网络
// 直出
enum NovelChapterLoadFrom {
  url,
  direct,
}

// 加载类型（数据类型）
enum NovelChapterLoadType {
  epub, // epub
  txt, // txt
  pdf, // pdf
  html, // 支持一些标签
}
