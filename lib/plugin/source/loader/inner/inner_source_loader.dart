import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/inner/inner_source.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';

class InnerSourceLoader extends SourceLoader {
  @override
  Future<SourceData> load(SourceInfo sourceInfo) async {
    final inner = InnerSourceFactory.of(sourceInfo.path);
    if (inner == null) {
      return SourceData(
          info: sourceInfo,
          state: SourceState.error,
          errorMsg: "内置源不存在");
    }
    return SourceData(info: sourceInfo, components: inner.getComponentList(sourceInfo));
  }

  @override
  Future<SourceInfo?> parse(String fromExtension, String filePath) async {
    final inner = InnerSourceFactory.of(filePath);
    if (inner == null) {
      return null;
    }
    return SourceInfo(
        key: inner.key,
        fromPackage: fromExtension,
        label: inner.label,
        type: inner.type,
        versionName: inner.versionName,
        versionCode: inner.versionCode,
        path: filePath,
        loaderType: SourceLoaderType.inner);
  }

  @override
  SourceLoaderType get type => SourceLoaderType.inner;
}
