// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionDataImpl _$$ExtensionDataImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionDataImpl(
      info: ExtensionInfo.fromJson(json['info'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => SourceInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      state: $enumDecodeNullable(_$ExtensionLoadStateEnumMap, json['state']) ??
          ExtensionLoadState.loaded,
      errorMsg: json['error_msg'] as String? ?? "",
      folderPath: json['folder_path'] as String,
    );

Map<String, dynamic> _$$ExtensionDataImplToJson(_$ExtensionDataImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'sources': instance.sources,
      'state': _$ExtensionLoadStateEnumMap[instance.state]!,
      'error_msg': instance.errorMsg,
      'folder_path': instance.folderPath,
    };

const _$ExtensionLoadStateEnumMap = {
  ExtensionLoadState.loaded: 'loaded',
  ExtensionLoadState.error: 'error',
};
