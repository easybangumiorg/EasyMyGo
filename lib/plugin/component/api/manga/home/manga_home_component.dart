import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/resp/home_resp.dart';

abstract class MangaHomeComponent extends Component {
  MangaHomeComponent(super.sourceInfo);

  /// 获取一级 tab 列表
  Future<MangaGetHomeTabResp> getHomeTab();

  /// 获取二级 tab 列表
  Future<MangaGetSecondTabResp> getSecondTab(BookHomeTab tab);

  /// 获取一级 tab 对应的页面（如果没有二级 tab 的话）
  Future<MangaGetHomePageResp> getPageWithHomeTab(BookHomeTab tab);

  /// 获取二级 tab 对应的页面
  Future<MangaGetHomePageResp> getPageWithSecondTab(
      BookHomeTab homeTab, BookSecondTab secondTab);

  /// 获取页面中某一页的漫画数据
  Future<MangaGetHomeCoverResp> loadPageData(MangaHomePage page, String key);
}
