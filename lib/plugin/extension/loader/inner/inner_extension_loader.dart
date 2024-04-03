import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/extension/utils/extension_utils.dart';
import 'package:easy_mygo/plugin/inner/inner_source.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';

class InnerExtensionLoader extends ExtensionLoader {

  @override
  Future<ExtensionData> load(ExtensionInfo extensionInfo) async {
    final folder = await ExtensionUtils.getInnerFolder();
    if (extensionInfo == InnerSourceFactory.innerExtensionInfo) {

      final keys = InnerSourceFactory.getKeys();
      final List<SourceInfo> sources = [];
      final loader = SourceLoader.of(SourceLoaderType.inner);
      for (var key in keys) {
        final sourceInfo = await loader.parse(InnerSourceFactory.innerExtensionPackage, key);
        if(sourceInfo == null){
          continue;
        }
        sources.add(sourceInfo);
      }

      return ExtensionData(
          info: extensionInfo,
          folderPath: folder,
          sources: sources,
      );
    }
    return ExtensionData(info: extensionInfo,
        folderPath: folder,
        state: ExtensionLoadState.error,
        errorMsg: "内置插件非法加载");
  }

  @override
  Future<ExtensionInfo?> parse(String file) async {
    if (file == InnerSourceFactory.innerExtensionPackage) {
      return InnerSourceFactory.innerExtensionInfo;
    }
    return null;
  }

  @override
  ExtensionLoaderType get type => ExtensionLoaderType.inner;

}