

import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/extension/loader/js/js_extension_loader.dart';

import 'mygopack/mygopack_extension_loader.dart';

abstract class ExtensionLoader {

  static final _loaders = <ExtensionLoaderType, ExtensionLoader>{
    ExtensionLoaderType.js: JsExtensionLoader(),
    ExtensionLoaderType.mygopack: MygopackExtensionLoader(),
  };

  static ExtensionLoader of(ExtensionLoaderType type) {
    return _loaders[type]!;
  }

  ExtensionLoaderType get type;

  Future<ExtensionInfo?> parse(String file);

  Future<ExtensionData?> load(ExtensionInfo extensionInfo);

}