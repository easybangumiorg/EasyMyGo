import 'package:easy_mygo/utils/source/source_utils_scope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_info.freezed.dart';

part 'source_info.g.dart';

enum SourceType { manga, novel }
enum SourceLoaderType { js }

@freezed
class SourceInfo with _$SourceInfo {
  factory SourceInfo({
    // 单个 Extension 里的所有 Source 的 key 需要唯一
    required String key,
    // 所在 Extension 的包名
    @JsonKey(name: 'from_package') required String fromPackage,
    required String label,
    required SourceType type,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'version_code') required int versionCode,
    required String path,
    @JsonKey(name: 'loader_type') required SourceLoaderType loaderType,
    @Default("") String description,
    @Default("") String header,
  }) = _SourceInfo;

  factory SourceInfo.fromJson(Map<String, dynamic> json) =>
      _$SourceInfoFromJson(json);
}

extension SourceInfoExt on SourceInfo {
  static final _identifyValues = Expando<String>();

  String get identify {
    return _identifyValues[this] ??= "$fromPackage-|-$key";
  }

  static final _sourceUtilsScopeValues = Expando<SourceUtilsScope>();
  SourceUtilsScope get sourceUtilsScope {
    return _sourceUtilsScopeValues[this] ??= SourceUtilsScope(this);
  }
}
