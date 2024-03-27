


import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';

class JsExtensionLoader extends ExtensionLoader {
  
  

  @override
  Future<ExtensionData?> load(ExtensionInfo extensionInfo) {
    throw UnimplementedError();
  }

  @override
  ExtensionLoaderType get type => ExtensionLoaderType.js;

  @override
  Future<ExtensionInfo?> parse(String file) {
    // TODO: implement parse
    throw UnimplementedError();
  }


}