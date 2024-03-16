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
      description: json['description'] as String? ?? "",
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
      'description': instance.description,
    };

const _$SourceTypeEnumMap = {
  SourceType.manga: 'manga',
  SourceType.novel: 'novel',
};
