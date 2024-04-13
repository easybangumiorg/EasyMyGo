
import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/resp/home_resp.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

class NovelTestComponent extends Component implements NovelHomeComponent {
  NovelTestComponent(super.sourceInfo);

  @override
  Future<NovelGetHomeTabResp> getHomeTab() async {
    return NovelGetHomeTabResp(tabList: [
      NovelHomeTab(id: "1", label: "有二级", hasSecondTab: true),
      NovelHomeTab(id: "2", label: "无二级封面", hasSecondTab: false),
    ], payload: ComponentPayload.ok());
  }

  @override
  Future<NovelGetHomePageResp> getPageWithHomeTab(NovelHomeTab tab) async {
    if (tab.id == "2") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "21", label: "21带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (tab.id == "3") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "31", label: "31不封面", hasCover: true),
          payload: ComponentPayload.ok());
    }
    return NovelGetHomePageResp(payload: ComponentPayload.ok());
  }

  @override
  Future<NovelGetHomePageResp> getPageWithSecondTab(NovelHomeTab homeTab, NovelHomeSecondTab secondTab) async {
    if (secondTab.id == "11") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "11", label: "11带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "12") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "12", label: "12不带封面", hasCover: false),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "31") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "31", label: "31带封面", hasCover: true),
          payload: ComponentPayload.ok());
    } else if (secondTab.id == "32") {
      return NovelGetHomePageResp(
          page: NovelHomePage(id: "32", label: "32不带封面", hasCover: false),
          payload: ComponentPayload.ok());
    }
    return NovelGetHomePageResp(payload: ComponentPayload.ok());
  }

  @override
  Future<NovelGetSecondTabResp> getSecondTab(NovelHomeTab tab) async {
    if (tab.id == "1") {
      return NovelGetSecondTabResp(tabList: [
        NovelHomeSecondTab(id: "11", label: "带封面11"),
        NovelHomeSecondTab(id: "12", label: "不带封面12"),
      ], payload: ComponentPayload.ok());
    } else if (tab.id == "3") {
      return NovelGetSecondTabResp(tabList: [
        NovelHomeSecondTab(id: "31", label: "带封面31"),
        NovelHomeSecondTab(id: "32", label: "不带封面32"),
      ], payload: ComponentPayload.ok());
    }
    return NovelGetSecondTabResp(tabList: [], payload: ComponentPayload.ok());
  }

  @override
  Future<NovelGetHomeCoverResp> loadPageData(NovelHomePage page, String key) async {
    final page = int.tryParse(key) ?? 0;
    if (page == 10){
      return NovelGetHomeCoverResp(
          data: _testCoverList(),
          nextKey: null,
          payload: ComponentPayload.ok());
    }else{
      return NovelGetHomeCoverResp(
          data: _testCoverList(),
          nextKey: "${page + 1}",
          payload: ComponentPayload.ok());
    }
  }

  List<NovelCover> _testCoverList() {
    List<NovelCover> res = [];
    for(var i = 0 ; i < 10 ; i ++){
      res.add(NovelCover(
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