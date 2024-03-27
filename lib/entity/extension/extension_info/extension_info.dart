import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension_info.freezed.dart';

part 'extension_info.g.dart';

enum ExtensionLoaderType {
  // 单个纯 js 文件
  js,
  // mygo 包,包里的文件格式交给 loader 去处理了
  mygopack
}

@freezed
class ExtensionInfo with _$ExtensionInfo {
  factory ExtensionInfo({
    // 包名唯一
    required String package,
    required String label,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'version_code') required int versionCode,
    @JsonKey(name: 'lib_version') required int libVersion,
    @JsonKey(name: 'extension_load_type') required ExtensionLoaderType loadType,
    required String path,
    @Default("") String readme,
  }) = _ExtensionInfo;

  factory ExtensionInfo.fromJson(Map<String, Object?> json) =>
      _$ExtensionInfoFromJson(json);
}
