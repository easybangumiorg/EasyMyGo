import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/resp/home_resp.dart';

abstract class NovelHomeComponent extends Component {
  NovelHomeComponent(super.sourceInfo);

  /// 获取一级 tab 列表
  Future<NovelGetHomeTabResp> getHomeTab();

  /// 获取二级 tab 列表
  Future<NovelGetSecondTabResp> getSecondTab(BookHomeTab tab);

  /// 获取一级 tab 对应的页面（如果没有二级 tab 的话）
  Future<NovelGetHomePageResp> getPageWithHomeTab(BookHomeTab tab);

  /// 获取二级 tab 对应的页面
  Future<NovelGetHomePageResp> getPageWithSecondTab(
      BookHomeTab homeTab, BookSecondTab secondTab);

  /// 获取页面中某一页的漫画数据
  Future<NovelGetHomeCoverResp> loadPageData(NovelHomePage page, String key);
}
