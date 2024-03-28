

import 'package:flutter_js/flutter_js.dart';

class JsSourceUtils {

  // 业务异常，js 主动抛出会把 message 进行展示
  static const easyErrorName = "MygoError";
  static const easyErrorJSCode = """
  class MygoError extends Error {
    constructor(message) {
      super(message); 
    }
  }
  """;

  static JavascriptRuntime newRuntime(){
    final runtime = getJavascriptRuntime();
    // 1. 装配 Error 类型
    runtime.evaluateAsync(easyErrorJSCode.trim());
    // 2. 装配工具
    return runtime;
  }
}