import 'dart:convert';

import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/utils/source/action/source_action.dart';
import 'package:html/dom.dart';
import 'package:xpath_selector_html_parser/xpath_selector_html_parser.dart';

///
/// HtmlXpathSelector(<content>, <selector>).[attrs(), attr(), allHtml(), outerHtml(), text()]
class HtmlXpathSelector extends SourceAction {
  HtmlXpathSelector()
      : super("HtmlXpathSelector",
            constructorArgsCount: 2,
            funcNames: ["attrs", "attr", "allHtml", "outerHtml", "text"]);

  /// constructorArgs[0] content 内容或地址
  /// constructorArgs[1] selector 选择器
  /// return address 地址
  @override
  Future<String> execute(SourceInfo sourceInfo, String funcName,
      List<String> constructorArgs, List<String> args) async {
    final content = constructorArgs.elementAtOrNull(0);
    final selector = constructorArgs.elementAtOrNull(1);
    final buffer = sourceInfo.sourceUtilsScope.bufferUtils;

    if (content == null || selector == null) {
      return "";
    }

    final realContent = buffer.get(content) ?? content;

    final xpath = HtmlXPath.html(realContent);
    final result = xpath.queryXPath(selector);

    var res = "";
    switch (funcName) {
      case 'attrs':
        try {
          res = jsonEncode(result.attrs);
        } catch (e) {
          res = "";
        }
      case 'attr':
        res = result.attr ?? '';
      case 'allHTML':
        try {
          res = jsonEncode(
              result.nodes.map((e) => (e.node as Element).outerHtml).toList());
        } catch (e) {
          res = "";
        }
      case 'outerHTML':
        res = (result.node?.node as Element).outerHtml;
      default:
        res = result.node?.text ?? '';
    }
    if (res == "") {
      return "-1";
    }
    return buffer.add(res).toString();
  }
}
