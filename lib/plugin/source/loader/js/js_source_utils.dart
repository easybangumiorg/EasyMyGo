import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/source/utils/action/source_action.dart';
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
  static final actionJsCode = _parseActionJSCode();

  static JavascriptRuntime newRuntime(SourceInfo sourceInfo) {
    final runtime = getJavascriptRuntime();
    // 1. 装配 Error 类型
    runtime.evaluateAsync(easyErrorJSCode.trim());
    // 2. 装配工具
    for (var action in SourceAction.actions) {
      for (var funcName in action.funcNames) {
        runtime.onMessage("${action.clazz}_$funcName", (args) async {
          final List<String> as = [];
          if (args is Iterable) {
            as.addAll(args.map((e) => e.toString()));
          } else {
            as.add(args.toString());
          }
          if (as.length < action.constructorArgsCount) {
            return "";
          }
          return await action.execute(
              sourceInfo,
              funcName,
              as.sublist(0, action.constructorArgsCount),
              as.sublist(action.constructorArgsCount));
        });
      }
    }
    runtime.evaluateAsync(actionJsCode);

    return runtime;
  }

  /// 对于 constructorArgsCount 为 0 的 Action，直接生成变量
  /// let XXUtils = {
  ///   "fun1": async function(...args){ await sendMessage('XXUtils_fun1', args)},
  ///   "fun2": async function(...args){ await sendMessage('XXUtils_fun2', args)},
  /// }
  /// 对于 constructorArgsCount 为 X，X > 0 的生成闭包
  /// function XXUtils(...constructorArgs){
  ///   if(constructorArgs.length < X}){
  ///     throw new MygoError("constructorArgs length must be X");
  ///   }
  ///   return {
  ///     "fun1": async function(...args){ await sendMessage('XXUtils_fun1', constructorArgs.concat(args))},
  ///     "fun2": async function(...args){ await sendMessage('XXUtils_fun2', constructorArgs.concat(args))},
  ///   }
  /// }
  static String _parseActionJSCode() {
    final StringBuffer sb = StringBuffer();
    for (var action in SourceAction.actions) {
      if (action.constructorArgsCount > 0) {
        sb.write("""
        function ${action.clazz}(...constructorArgs){
          if(constructorArgs.length < ${action.constructorArgsCount}){
            throw new MygoError("constructorArgs length must be ${action.constructorArgsCount}");
          }
          return {
            ${action.funcNames.map((e) => """
            $e: async function (...args){ 
              let a = constructorArgs.concat(args).map(function(currentValue,index,arr){
                JSON.stringify(currentValue);
              });
              await sendMessage('${action.clazz}_$e', a) 
            }""".trim()).join(",")}
        };
      """);
      } else {
        sb.write("""
        let ${action.clazz} = {
            ${action.funcNames.map((e) => """
            $e: async function (...args){
               let a = args.map(function(currentValue,index,arr){
                JSON.stringify(currentValue);
              });
              await sendMessage('${action.clazz}_$e', a)
            }
          """.trim()).join(",")}
          };
      """);
      }
    }
    return sb.toString();
  }
}
