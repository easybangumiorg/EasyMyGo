

import 'dart:convert';

import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:flutter_js/javascript_runtime.dart';
import 'package:flutter_js/js_eval_result.dart';

class JsComponentUtils {

  /// throws ComponentPayload
  static Future<JsEvalResult> evaluateAsync(JavascriptRuntime runtime, String js) async {
    final res = await runtime.evaluateAsync(js);
    if(res.isError){
      throw ComponentPayload(
          code: ComponentPayload.codeCallError,
          msg: res.stringResult,
          raw: res.rawResult);
    }
    return res;
  }

  /// throws ComponentPayload
  static dynamic jsonDecodeWithCheck(JsEvalResult jsEvalResult) {
    final json = jsonDecode(jsEvalResult.stringResult);
    if(json == null){
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "jsDecode is null",
          raw: jsEvalResult.rawResult);
    }
  }
}