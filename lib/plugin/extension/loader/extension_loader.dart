

import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/extension/loader/inner/inner_extension_loader.dart';
import 'package:easy_mygo/plugin/extension/loader/js/js_extension_loader.dart';

import 'mygopack/mygopack_extension_loader.dart';

abstract class ExtensionLoader {

  static const libVersionMin = 1;
  static const libVersionMax = 1;

  static final _loaders = <ExtensionLoaderType, ExtensionLoader>{
    ExtensionLoaderType.js: JsExtensionLoader(),
    ExtensionLoaderType.mygopack: MygopackExtensionLoader(),
    ExtensionLoaderType.inner: InnerExtensionLoader(),
  };

  static ExtensionLoader of(ExtensionLoaderType type) {
    return _loaders[type]!;
  }

  static ExtensionLoader? ofName(String name) {
    for (var key in _loaders.keys) {
      final loader = _loaders[key];
      if(loader?.type.name == name){
        return loader;
      }
    }
    return null;
  }


  ExtensionLoaderType get type;

  /// 解析拓展元数据
  Future<ExtensionInfo?> parse(String file);

  /// 加载拓展
  Future<ExtensionData> load(ExtensionInfo extensionInfo);

}