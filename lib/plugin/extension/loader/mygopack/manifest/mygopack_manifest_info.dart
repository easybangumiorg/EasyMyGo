

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mygopack_manifest_info.g.dart';
part 'mygopack_manifest_info.freezed.dart';

/// Mygo 插件包清单文件解析实体
@freezed
class MygoPackManifest with _$MygoPackManifest {
  factory MygoPackManifest({
    // 包名唯一
    required String package,
    required String label,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'version_code') required int versionCode,
    @JsonKey(name: 'lib_version') required int libVersion,
    @Default("") String readme,

  }) = _MygoPackManifest;

  factory MygoPackManifest.fromJson(Map<String, Object?> json) =>
      _$MygoPackManifestFromJson(json);
}