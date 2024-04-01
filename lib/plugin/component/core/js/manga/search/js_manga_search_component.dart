
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/manga_search_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaSearchComponent extends MangeSearchComponent {



  static const methodNameSearch = "manga_search_search";
  static const _performMethodSearch = "perform_manga_search_search";

  static const methodNameInitKey = "manga_search_init_key";

  static const _performSearchJSCode = """
  async function $_performMethodSearch(summary) {
    try{
      let resp = await $methodNameSearch(summary);
      return JSON.stringify({
        data: resp.data,
        next_key: resp.next_key,
        payload: {
          code: 0,
          msg: 'ok'
        }
      });
    }catch(e){
      if(e instanceof ${JsSourceUtils.easyErrorName}){
        return JSON.stringify({
          data: null,
          next_key: null,
          payload: {
            code: ${ComponentPayload.codeBusinessError},
            msg: e.message
          }
        });
      }else{
        return JSON.stringify({
          data: null,
          next_key: null,
          payload: {
            code: ${ComponentPayload.codeCallError},
            msg: e
          }
        });
      }
    }
  }
  """;

  late JavascriptRuntime _runtime;
  late Future<void> _initJob;

  JsMangaSearchComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
    _initJob = Future(() async {
      await jsRuntime.evaluateAsync(_performSearchJSCode);
    });
  }

  @override
  Future<String> getInitKey(String key) async {
    try{
      final res = await JsComponentUtils.evaluateAsync(_runtime,
          "$methodNameInitKey($key)");
      return res.stringResult;
    }catch(e){
      return "";
    }
  }

  @override
  Future<SearchResp> search(String key, String keyword) async {
    await _initJob;
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodSearch($key,$keyword)");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = SearchResp.fromJson(json);

    if (respTemp.data == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
          raw: res.rawResult,
        )
    );
  }



}