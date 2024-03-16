

import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension.freezed.dart';
part 'extension.g.dart';

@freezed
class ExtensionInfo with _$ExtensionInfo {
  factory ExtensionInfo({
    required String key,
    required String label,
    required String pkgName,
    required String versionName,
    required int versionCode,
    required int libVersion,
    required int loadType,
    required String path,
    @Default("") String read,
  }) = _ExtensionInfo;

  factory ExtensionInfo.fromJson(Map<String, Object?> json) =>
      _$ExtensionInfoFromJson(json);
}

