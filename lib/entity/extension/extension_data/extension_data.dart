import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension_data.g.dart';

part 'extension_data.freezed.dart';

/// ExtensionInfo 加载结果
/// 拓展管理界面依赖的实体


enum ExtensionState {
  loading, none, loaded, error
}

@freezed
class ExtensionData with _$ExtensionData {
  factory ExtensionData({
    required ExtensionInfo info,
    @Default(null) List<SourceInfo>? sources,
    @Default(ExtensionState.none) ExtensionState state,
    @JsonKey(name: "error_msg") @Default("") String errorMsg,
    // 该插件的文件夹
    @JsonKey(name: "folder_path") required String folderPath,
  }) = _ExtensionData;

  factory ExtensionData.fromJson(Map<String, Object?> json) =>
      _$ExtensionDataFromJson(json);
}
