import 'dart:convert';

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/manga_read_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaReadComponent extends MangeReadComponent {

  static const methodName = "manga_read_getMangaPicture";
  static const _performMethodName = "perform_manga_read_getMangaPicture";

  static const _performJSCode = """
  async function $_performMethodName(detailed, chapter) {
    try {
      let resp = await $methodName(detailed, chapter);
      return JSON.stringify({
        pictures: resp.pictures,
        payload: {
          code: 0,
          msg: 'ok',
        }
      });
    } catch (e) {
      if(e instanceof ${JsSourceUtils.easyErrorName}){
        return JSON.stringify({
          pictures: null,
          payload: {
            code: ${ComponentPayload.codeBusinessError},
            msg: e.message
          }
        });
      }else{
        return JSON.stringify({
          pictures: null,
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

  JsMangaReadComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
    _initJob = Future(() async {
      await jsRuntime.evaluateAsync(_performJSCode);
    });
  }



  @override
  Future<ReadResp> getMangaPicture(
      MangaDetailed detailed, MangaChapter chapter) async {
    await _initJob;
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodName(${jsonEncode(detailed.toJson())}, ${jsonEncode(chapter.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = ReadResp.fromJson(json);
    if (respTemp.pictures == null && respTemp.payload.code == 0) {
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
