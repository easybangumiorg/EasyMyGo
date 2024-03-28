import 'dart:convert';

import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/manga_detailed_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaDetailedComponent extends MangeDetailedComponent {


  static const methodName = "manga_detailed_getMangaDetailed";
  static const _performMethodName = "perform_manga_detailed_getMangaDetailed";

  static const _performJSCode = """
  function $_performMethodName(summary) {
    try{
      let resp = $methodName(summary);
      return JSON.stringify({
        detailed: resp.detailed,
        chapters: resp.chapters,
        payload: {
          code: 0,
          msg: 'ok'
        }
      });
    }catch(e){
      if(e instanceof ${JsSourceUtils.easyErrorName}){
        return JSON.stringify({
          detailed: null,
          chapters: null,
          payload: {
            code: ${ComponentPayload.codeBusinessError},
            msg: e.message
          }
        });
      }else{
        return JSON.stringify({
          detailed: null,
          chapters: null,
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

  JsMangaDetailedComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
    _initJob = Future(() async {
      await jsRuntime.evaluateAsync(_performJSCode);
    });
  }

  @override
  Future<DetailedResp> getMangaDetailed(MangaSummary summary) async {
    await _initJob;
    final res = await JsComponentUtils.evaluateAsync(
        _runtime, "$_performMethodName(${jsonEncode(summary.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);

    final respTemp = DetailedResp.fromJson(json);
    if (respTemp.detailed == null &&
        respTemp.chapters == null &&
        respTemp.payload.code == 0 ) {
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
