import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/manga_home_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/resp/home_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

class MangaTestComponent extends Component implements MangaHomeComponent {
  MangaTestComponent(super.sourceInfo);

  @override
  Future<MangaGetHomeTabResp> getHomeTab() async {
    return MangaGetHomeTabResp(tabList: [
      BookHomeTab(id: "1", label: "有二级", hasSecondTab: true),
      BookHomeTab(id: "2", label: "无二级封面", hasSecondTab: false),
    ], payload: ComponentPayload.ok());
  }

  @override
  Future<MangaGetSecondTabResp> getSecondTab(BookHomeTab tab) async {
    if (tab.id == "1") {
      return MangaGetSecondTabResp(tabList: [
        BookSecondTab(id: "11", label: "带封面11"),
        BookSecondTab(id: "12", label: "不带封面12"),
      ], payload: ComponentPayload.ok());
    } else if (tab.id == "3") {
      return MangaGetSecondTabResp(tabList: [
        BookSecondTab(id: "31", label: "带封面31"),
        BookSecondTab(id: "32", label: "不带封面32"),
      ], payload: ComponentPayload.ok());
    }
    return MangaGetSecondTabResp(tabList: [], payload: ComponentPayload.ok());
  }

  @override
  Future<MangaGetHomePageResp> getPageWithHomeTab(BookHomeTab tab) async {
    if (tab.id == "2") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "21", label: "21带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (tab.id == "3") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "31", label: "31不封面", hasCover: true),
          payload: ComponentPayload.ok());
    }
    return MangaGetHomePageResp(payload: ComponentPayload.ok());
  }

  @override
  Future<MangaGetHomePageResp> getPageWithSecondTab(
      BookHomeTab homeTab, BookSecondTab secondTab) async {
    if (secondTab.id == "11") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "11", label: "11带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "12") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "12", label: "12不带封面", hasCover: false),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "31") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "31", label: "31带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "32") {
      return MangaGetHomePageResp(
          page: MangaHomePage(id: "32", label: "32不带封面", hasCover: false),
          payload: ComponentPayload.ok());
    }
    return MangaGetHomePageResp(payload: ComponentPayload.ok());
  }

  @override
  Future<MangaGetHomeCoverResp> loadPageData(
      MangaHomePage page, String key) async {
    final page = int.tryParse(key) ?? 0;
    if (page == 10) {
      return MangaGetHomeCoverResp(
          data: _testCoverList(),
          nextKey: null,
          payload: ComponentPayload.ok());
    } else {
      return MangaGetHomeCoverResp(
          data: _testCoverList(),
          nextKey: "${page + 1}",
          payload: ComponentPayload.ok());
    }
  }

  List<MangaCover> _testCoverList() {
    List<MangaCover> res = [];
    for (var i = 0; i < 10; i++) {
      res.add(MangaCover(
          source: sourceInfo.identify,
          id: "${DateTime.timestamp()} $i",
          label: "test $i",
          cover: "",
          intro: "",
          jumpUrl: ""));
    }
    return res;
  }
}
