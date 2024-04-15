
// 小说首页
import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/search/novel_search_component.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

import 'book_cover_page.dart';

// 首页
class NovelBookHomeCoverPage extends BookCoverPage {
  final NovelHomeComponent component;
  final NovelHomePage homePage;

  NovelBookHomeCoverPage(this.component, this.homePage);

  @override
  Future<String> initKey() async {
    return homePage.initKey;
  }

  @override
  Future<(ComponentPayload, List<BookCover>, String?)> loadPageData(
      String key) async {
    final resp = await component.loadPageData(homePage, key);
    return (
    resp.payload,
    [for (final i in resp.data ?? []) BookCover.fromNovelCover(i)],
    resp.nextKey
    );
  }
}

// 搜索
class NovelBookSearchCoverPage extends BookCoverPage {
  final NovelSearchComponent component;
  final String keyword;

  NovelBookSearchCoverPage(this.component, this.keyword);

  @override
  Future<String> initKey() async {
    return await component.getInitKey(keyword);
  }

  @override
  Future<(ComponentPayload, List<BookCover>, String?)> loadPageData(
      String key) async {
    final resp = await component.search(key, keyword);
    return (
    resp.payload,
    [for (final i in resp.data ?? []) BookCover.fromNovelCover(i)],
    resp.nextKey
    );
  }
}


