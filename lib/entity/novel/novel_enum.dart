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

enum NovelSeasonOrganizeType {
  // Season 中的 ChapterList 是一个一个章节，一般用于 web 版，一个 Chapter 最终会被缓存成一个 txt，业务需要打包多个 txt 后再输入阅读器
  multiChapter,

  // 一个 Season 里就是一个 Chapter，一般用于 epub 等电子书文件格式，Chapter 由文件本身区分
  singleChapter,
}


// 字符串直出类型最终会缓存到本地 txt 以 txt 进行加载。
enum NovelChapterType {
  epub, // epub, path 为文件路径
  txt, // txt
  pdf, // pdf
}
