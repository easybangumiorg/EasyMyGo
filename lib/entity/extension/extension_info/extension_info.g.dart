// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionInfoImpl _$$ExtensionInfoImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionInfoImpl(
      package: json['package'] as String,
      label: json['label'] as String,
      versionName: json['version_name'] as String,
      versionCode: (json['version_code'] as num).toInt(),
      libVersion: (json['lib_version'] as num).toInt(),
      loadType: $enumDecode(
          _$ExtensionLoaderTypeEnumMap, json['extension_load_type']),
      path: json['path'] as String,
      readme: json['readme'] as String? ?? "",
    );

Map<String, dynamic> _$$ExtensionInfoImplToJson(_$ExtensionInfoImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'label': instance.label,
      'version_name': instance.versionName,
      'version_code': instance.versionCode,
      'lib_version': instance.libVersion,
      'extension_load_type': _$ExtensionLoaderTypeEnumMap[instance.loadType]!,
      'path': instance.path,
      'readme': instance.readme,
    };

const _$ExtensionLoaderTypeEnumMap = {
  ExtensionLoaderType.js: 'js',
  ExtensionLoaderType.mygopack: 'mygopack',
  ExtensionLoaderType.inner: 'inner',
};
