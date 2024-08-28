import 'dart:convert';

import 'package:easy_mygo/entity/novel/novel_summary/novel_summary.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/novel/detailed/novel_detailed_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/js_component.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/js_component_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsNovelDetailedComponent extends NovelDetailedComponent
    implements JsComponent {
  static const methodName = "novel_detailed_getNovelDetailed";
  static const _performMethodName = "perform_novel_detailed_getNovelDetailed";

  static final _performJSCode = JsComponentUtils.getPerformFunctionJsCode(
      _performMethodName, methodName, 1);

  late JavascriptRuntime _runtime;

  JsNovelDetailedComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }

  @override
  Future<NovelDetailedResp> getNovelDetailed(NovelSummary summary) async {
    final res = await JsComponentUtils.evaluateAsync(
        _runtime, "$_performMethodName(${jsonEncode(summary.toJson())})");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final rt = NovelDetailedResp.fromJson(json);
    final respTemp = rt.copyWith(
        detailed: rt.detailed?.copyWith(
      source: sourceInfo.identify,
    ));
    if (respTemp.detailed == null &&
        respTemp.volumes == null &&
        respTemp.payload.code == 0) {
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
    return await JsComponentUtils.checkFunction(
        _runtime, [methodName], [_performMethodName]);
  }

  @override
  Future<void> onLoad() async {
    await _runtime.evaluateAsync(_performJSCode);
  }
}
