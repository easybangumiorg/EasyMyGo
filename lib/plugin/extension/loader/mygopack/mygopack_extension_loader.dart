
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';

class MygopackExtensionLoader extends ExtensionLoader {

  @override
  List<SourceInfo> load(ExtensionInfo extensionInfo) {
    // 1. 解压
    // 2. 解析
    throw UnimplementedError();
  }

  @override
  ExtensionLoaderType get type => ExtensionLoaderType.mygopack;


}