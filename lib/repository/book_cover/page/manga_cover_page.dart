
import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/manga_home_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/manga_search_component.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

import 'book_cover_page.dart';

// 首页
class MangaBookHomeCoverPage extends BookCoverPage {
  final MangaHomeComponent component;
  final MangaHomePage homePage;

  MangaBookHomeCoverPage(this.component, this.homePage);

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
    [for (final i in resp.data ?? []) BookCover.fromMangaCover(i)],
    resp.nextKey
    );
  }
}

// 搜索
class MangaBookSearchCoverPage extends BookCoverPage {
  final MangaSearchComponent component;
  final String keyword;

  MangaBookSearchCoverPage(this.component, this.keyword);

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
    [for (final i in resp.data ?? []) BookCover.fromMangaCover(i)],
    resp.nextKey
    );
  }
}



