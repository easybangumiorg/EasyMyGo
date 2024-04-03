import 'dart:convert';

import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/manga_home_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/resp/home_resp.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/js_component.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/js_component_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaHomeComponent extends MangaHomeComponent implements JsComponent {
  static const methodNameGetTab = "manga_home_getHomeTab";
  static const methodNameGetSecondTab = "manga_home_getSecondTab";
  static const methodNameGetPageWithHomeTab = "manga_home_getPageWithHomeTab";
  static const methodNameGetPageWithSecondTab = "manga_home_getPageWithSecondTab";
  static const methodNameLoadPageData = "manga_home_loadPageData";

  static const _performMethodNameGetTab = "perform_manga_home_getHomeTab";
  static const _performMethodNameGetSecondTab = "perform_home_getSecondTab";
  static const _performMethodNameGetPageWithHomeTab = "perform_manga_home_getPageWithHomeTab";
  static const _performMethodNameGetPageWithSecondTab = "perform_manga_home_getPageWithSecondTab";
  static const _performMethodNameLoadPageData = "perform_manga_home_loadPageData";

  static final _performJSCode = """"
    ${JsComponentUtils.getPerformFunctionJsCode(_performMethodNameGetTab, methodNameGetTab, 0)}
    ${JsComponentUtils.getPerformFunctionJsCode(_performMethodNameGetSecondTab, methodNameGetSecondTab, 2)}
    ${JsComponentUtils.getPerformFunctionJsCode(_performMethodNameGetPageWithHomeTab, methodNameGetPageWithHomeTab, 1)}
    ${JsComponentUtils.getPerformFunctionJsCode(_performMethodNameGetPageWithSecondTab, methodNameGetPageWithSecondTab, 2)}
    ${JsComponentUtils.getPerformFunctionJsCode(_performMethodNameLoadPageData, methodNameLoadPageData, 2)}
  """;

  late JavascriptRuntime _runtime;

  JsMangaHomeComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }

  @override
  Future<MangaGetHomeTabResp> getHomeTab() async {
    final res = await JsComponentUtils.evaluateAsync(
        _runtime, "$_performMethodNameGetTab()");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = MangaGetHomeTabResp.fromJson(json);
    if (respTemp.tabList == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
      raw: res.rawResult,
    ));
  }

  @override
  Future<MangaGetSecondTabResp> getSecondTab(MangaHomeTab tab) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodNameGetSecondTab(${jsonEncode(tab.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = MangaGetSecondTabResp.fromJson(json);
    if (respTemp.tabList == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
      raw: res.rawResult,
    ));
  }

  @override
  Future<MangaGetHomePageResp> getPageWithHomeTab(MangaHomeTab tab) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodNameGetPageWithHomeTab(${jsonEncode(tab.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = MangaGetHomePageResp.fromJson(json);
    if (respTemp.page == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
      raw: res.rawResult,
    ));
  }

  @override
  Future<MangaGetHomePageResp> getPageWithSecondTab(
      MangaHomeTab homeTab, MangaHomeSecondTab secondTab) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodNameGetPageWithSecondTab(${jsonEncode(homeTab.toJson())}, ${jsonEncode(secondTab.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = MangaGetHomePageResp.fromJson(json);
    if (respTemp.page == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
      raw: res.rawResult,
    ));
  }

  @override
  Future<MangaGetHomeCoverResp> loadPageData(
      MangaHomePage page, String key) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodNameLoadPageData(${jsonEncode(page.toJson())}, $key)");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final rt = MangaGetHomeCoverResp.fromJson(json);
    final respTemp = rt.copyWith(
      data: rt.data?.map((e) => e.copyWith(source: sourceInfo.identify)).toList(),
    );
    if (respTemp.data == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
      raw: res.rawResult,
    ));
  }

  @override
  Future<bool> isAvailable() async {
    return await JsComponentUtils.checkFunction(_runtime, [
      methodNameGetTab,
      methodNameGetPageWithHomeTab,
      methodNameLoadPageData
    ], [
      _performMethodNameGetTab,
      _performMethodNameGetSecondTab,
      _performMethodNameGetPageWithHomeTab,
      _performMethodNameGetPageWithSecondTab,
      _performMethodNameLoadPageData,
    ]);
  }

  @override
  Future<void> onLoad() async {
    await _runtime.evaluateAsync(_performJSCode);
  }
}
