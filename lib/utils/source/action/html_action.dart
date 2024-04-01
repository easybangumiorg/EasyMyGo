import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/utils/source/action/source_action.dart';
import 'package:html/parser.dart';

class HtmlQuerySelector extends SourceAction {
  HtmlQuerySelector()
      : super("HtmlQuerySelector",
            constructorArgsCount: 2,
            funcNames: ["text", "innerHtml", "outerHtml"]);

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
    final doc = parse(realContent).querySelector(selector);
    var res = "";
    switch (funcName) {
      case 'text':
        res = doc?.text ?? '';
      case 'innerHTML':
        res = doc?.innerHtml ?? '';
      default:
        res = doc?.outerHtml ?? '';
    }
    if (res == "") {
      return "";
    }
    return buffer.add(res).toString();
  }
}
