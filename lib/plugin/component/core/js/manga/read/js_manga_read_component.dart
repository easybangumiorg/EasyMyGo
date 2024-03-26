import 'dart:convert';

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/manga_read_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaReadComponent extends MangeReadComponent {

  static const _methodName = "manga_read_getMangaPicture";

  late JavascriptRuntime _runtime;

  JsMangaReadComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }



  @override
  Future<ReadResp> getMangaPicture(
      MangaDetailed detailed, MangaChapter chapter) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_methodName(${jsonEncode(detailed.toJson())}, ${jsonEncode(chapter.toJson())})");
    final json = JsComponentUtils.jsonDecodeWithCheck(res);
    final respTemp = ReadResp.fromJson(json);
    final payloadJson = json["payload"];
    if (respTemp.pictures == null && payloadJson == null) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp;
  }
}
