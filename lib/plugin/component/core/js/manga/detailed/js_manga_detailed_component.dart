import 'dart:convert';

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/manga_detailed_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/JsComponentUtils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsMangaDetailedComponent extends MangeDetailedComponent {
  late JavascriptRuntime _runtime;

  static const _methodName = "manga_detailed_getMangaDetailed";

  JsMangaDetailedComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }

  @override
  Future<DetailedResp> getMangaDetailed(MangaSummary summary) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_methodName(${jsonEncode(summary.toJson())})");
    final json = JsComponentUtils.jsonDecodeWithCheck(res);
    final respTemp = DetailedResp.fromJson(json);
    final payloadJson = json["payload"];
    if (respTemp.detailed == null && respTemp.chapters == null && payloadJson == null) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp;
  }
}
