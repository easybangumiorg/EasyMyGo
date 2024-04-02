

import 'dart:convert';

import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/flutter_js.dart';
import 'package:flutter_js/javascript_runtime.dart';
import 'package:flutter_js/js_eval_result.dart';

class JsComponentUtils {

  /// throws ComponentPayload
  static Future<JsEvalResult> evaluateAsync(JavascriptRuntime runtime, String js) async {
    final promise = await runtime.evaluateAsync(js);
    final res = await runtime.handlePromise(promise);
    if(res.isError){
      throw ComponentPayload(
          code: ComponentPayload.codeCallError,
          msg: res.stringResult,
          raw: res.rawResult);
    }
    return res;
  }

  /// throws ComponentPayload
  static Future<dynamic> jsonDecodeWithCheck(JavascriptRuntime runtime, JsEvalResult jsEvalResult) async {
    try {
      final json = jsonDecode(jsEvalResult.stringResult);
      if(json == null){
        throw ComponentPayload(
            code: ComponentPayload.codeParseResultError,
            msg: "jsDecode is null",
            raw: jsEvalResult.rawResult);
      }
      return json;
    }catch(e){
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "jsDecode error",
          raw: jsEvalResult.rawResult);
    }

  }

  /// need 里的函数名需要定义
  /// noNeed 里的函数名不能定义
  static Future<bool> checkFunction(JavascriptRuntime runtime, List<String> need, List<String> noNeed) async {
    final List<String> checkList = [];
    checkList.addAll(need.map((e) => "typeof $e === typeof(Function)"));
    checkList.addAll(noNeed.map((e) => "typeof $e !== typeof(Function)"));

    final result = await runtime.evaluateAsync(
        checkList.join(" && "));
    return result.stringResult == "true";
  }

  /// 包装 perform 函数
  /// argsNum 为参数数量
  static String getPerformFunctionJsCode(String performFuncName, String funcName, int argsNum) {
    final List<String> arg = [];
    for (int i = 0; i < argsNum; i++) {
      arg.add(i.toRadixString(16));
    }
    final par = arg.join(", ");
    return """
       async function $performFuncName ($par) {
          try {
            let resp = $funcName ($par);
            resp.payload = {
              code: 0,
              msg: 'ok'
            };
            return JSON.stringify(resp);
          }catch(e){
            if(e instanceof ${JsSourceUtils.easyErrorName}){
              return JSON.stringify({
                payload: {
                  code: ${ComponentPayload.codeBusinessError},
                  msg: e.message
                }
              });
            }else{
              return JSON.stringify({
                payload: {
                  code: ${ComponentPayload.codeCallError},
                  msg: e
                }
              });
            }
          }
       }
    """;
  }
}