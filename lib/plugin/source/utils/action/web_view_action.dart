
import 'dart:convert';

import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/source/utils/action/entity/web_view_strategy/web_view_strategy.dart';
import 'package:easy_mygo/plugin/source/utils/action/source_action.dart';

class WebViewAction extends SourceAction {
  WebViewAction() : super("WebViewUtils",
      constructorArgsCount: 0, funcNames: ["getRenderedHtmlCode"]);

  @override
  Future<String> execute(SourceInfo sourceInfo, String funcName, List<String> constructorArgs, List<String> args) async {
    switch(funcName){
      case "getRenderedHtmlCode":
        final url = args.elementAtOrNull(0) ?? "";
        final strategyString = args.elementAtOrNull(1) ?? "";

        try {
          final strategy = WebViewStrategy.fromJson(jsonDecode(strategyString));
          // TODO webview 爬取

        }catch(e){
          return "";
        }
    }
    return "";
  }
}