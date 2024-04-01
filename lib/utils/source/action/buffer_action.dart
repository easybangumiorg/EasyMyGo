import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/utils/source/action/source_action.dart';


class BufferAction extends SourceAction {
  BufferAction() : super("Buffer",
      constructorArgsCount: 0, funcNames: ["put", "get"]);

  @override
  Future<String> execute(SourceInfo sourceInfo, String funcName, List<String> constructorArgs, List<String> args) async {
    switch(funcName){
      case "put":
        final value = args.elementAtOrNull(0);
        if(value == null){
          return "";
        }

        final buffer = sourceInfo.sourceUtilsScope.bufferUtils;
        return buffer.add(value).toString();
      case "get":
        final args1 = args.elementAtOrNull(0);
        if (args1 == null){
          return "";
        }

        final buffer = sourceInfo.sourceUtilsScope.bufferUtils;
        return buffer.get(args1) ?? "";
    }
    return "";
  }
}
