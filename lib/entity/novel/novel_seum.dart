enum NovelStatus {
  ongoing,
  complete,
  unknown,
}

enum NovelUpdateStrategy { always, onlyStrict, never }



enum NovelChapterLoadType {
  file,     // 文件形式，src 为 url （支持本地 file:// 协议）
  direct,   // 字符串直出（一些 web 版），src 为字符串直出
}

// 字符串直出类型最终会缓存到本地 txt 以 txt 进行加载。
enum NovelDecodeType {
  epub,   // epub, path 为文件路径
  txt,    // txt
  pdf,    // pdf
}

