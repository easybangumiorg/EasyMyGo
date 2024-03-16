// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionInfoImpl _$$ExtensionInfoImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionInfoImpl(
      key: json['key'] as String,
      label: json['label'] as String,
      pkgName: json['pkgName'] as String,
      versionName: json['versionName'] as String,
      versionCode: json['versionCode'] as int,
      libVersion: json['libVersion'] as int,
      loadType: json['loadType'] as int,
      path: json['path'] as String,
      read: json['read'] as String? ?? "",
    );

Map<String, dynamic> _$$ExtensionInfoImplToJson(_$ExtensionInfoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'pkgName': instance.pkgName,
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
      'libVersion': instance.libVersion,
      'loadType': instance.loadType,
      'path': instance.path,
      'read': instance.read,
    };
