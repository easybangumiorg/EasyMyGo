// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceInfoImpl _$$SourceInfoImplFromJson(Map<String, dynamic> json) =>
    _$SourceInfoImpl(
      key: json['key'] as String,
      fromPackage: json['from_package'] as String,
      label: json['label'] as String,
      type: $enumDecode(_$SourceTypeEnumMap, json['type']),
      versionName: json['version_name'] as String,
      versionCode: json['version_code'] as int,
      path: json['path'] as String,
      loaderType: $enumDecode(_$SourceLoaderTypeEnumMap, json['loader_type']),
      description: json['description'] as String? ?? "",
      header: json['header'] as String? ?? "",
    );

Map<String, dynamic> _$$SourceInfoImplToJson(_$SourceInfoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'from_package': instance.fromPackage,
      'label': instance.label,
      'type': _$SourceTypeEnumMap[instance.type]!,
      'version_name': instance.versionName,
      'version_code': instance.versionCode,
      'path': instance.path,
      'loader_type': _$SourceLoaderTypeEnumMap[instance.loaderType]!,
      'description': instance.description,
      'header': instance.header,
    };

const _$SourceTypeEnumMap = {
  SourceType.manga: 'manga',
  SourceType.novel: 'novel',
};

const _$SourceLoaderTypeEnumMap = {
  SourceLoaderType.js: 'js',
};
