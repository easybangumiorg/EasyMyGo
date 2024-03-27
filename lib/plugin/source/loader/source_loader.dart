



import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_loader.dart';

abstract class SourceLoader {

  static final _loaders = <SourceLoaderType, SourceLoader>{
    SourceLoaderType.js: JsSourceLoader(),
  };

  static SourceLoader of(SourceLoaderType type) {
    return _loaders[type]!;
  }

  static SourceLoader? ofName(String name) {
    for (var key in _loaders.keys) {
      final loader = _loaders[key];
      if(loader?.type.name == name){
        return loader;
      }
    }
    return null;
  }

  SourceLoaderType get type;

  Future<SourceInfo?> parse(String fromExtension, String filePath);
}