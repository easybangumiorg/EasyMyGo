
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/manga_search_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaSearchComponent extends MangeSearchComponent {

  late JavascriptRuntime _runtime;

  static const _methodNameSearch = "manga_search_search";
  static const _methodNameInitKey = "manga_search_init_key";

  JsMangaSearchComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }

  @override
  Future<String> getInitKey(String key) async {
    try{
      final res = await JsComponentUtils.evaluateAsync(_runtime,
          "$_methodNameInitKey($key)");
      return res.stringResult;
    }catch(e){
      return "";
    }
  }

  @override
  Future<SearchResp> getMangaDetailed(String key, String keyword) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_methodNameSearch($key,$keyword)");
    final json = JsComponentUtils.jsonDecodeWithCheck(res);
    final respTemp = SearchResp.fromJson(json);
    final payloadJson = json["payload"];

    if (respTemp.data == null && payloadJson == null) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp;
  }



}