import 'dart:convert';

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/manga_read_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/js_component.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/js_component_utils.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaReadComponent extends MangaReadComponent implements JsComponent {

  static const methodName = "manga_read_getMangaPicture";
  static const _performMethodName = "perform_manga_read_getMangaPicture";

  static final _performJSCode = JsComponentUtils.getPerformFunctionJsCode(_performMethodName, methodName, 2);

  late JavascriptRuntime _runtime;

  JsMangaReadComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }


  @override
  Future<MangaReadResp> getMangaPicture(
      MangaDetailed detailed, MangaChapter chapter) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodName(${jsonEncode(detailed.toJson())}, ${jsonEncode(chapter.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final respTemp = MangaReadResp.fromJson(json);
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

  @override
  Future<bool> isAvailable() async {
    return await JsComponentUtils.checkFunction(_runtime, [methodName], [_performMethodName]);
  }

  @override
  Future<void> onLoad() async {
    await _runtime.evaluateAsync(_performJSCode);
  }
}
