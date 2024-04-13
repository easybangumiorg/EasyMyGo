import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/inner/inner_source.dart';
import 'package:easy_mygo/plugin/inner/test/component/manga/manga_test_component.dart';
import 'package:easy_mygo/plugin/inner/test/component/novel/novel_test_component.dart';

class TestMangaSource extends InnerSource {
  TestMangaSource(): super(
    key: "test_manga",
    label: "测试漫画源",
    versionName: "1.0",
    versionCode: 1,
    type: SourceType.manga,
  );

  @override
  List<Component> getComponentList(SourceInfo sourceInfo) {
    return [
      MangaTestComponent(sourceInfo)
    ];
  }
}

class TestNovelSource extends InnerSource {
  TestNovelSource(): super(
    key: "test_novel",
    label: "测试小说源",
    versionName: "1.0",
    versionCode: 1,
    type: SourceType.manga,
  );

  @override
  List<Component> getComponentList(SourceInfo sourceInfo) {
    return [
      NovelTestComponent(sourceInfo)
    ];
  }
}

