// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mygopack_manifest_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MygoPackManifestImpl _$$MygoPackManifestImplFromJson(
        Map<String, dynamic> json) =>
    _$MygoPackManifestImpl(
      package: json['package'] as String,
      label: json['label'] as String,
      versionName: json['version_name'] as String,
      versionCode: (json['version_code'] as num).toInt(),
      libVersion: (json['lib_version'] as num).toInt(),
      readme: json['readme'] as String? ?? "",
    );

Map<String, dynamic> _$$MygoPackManifestImplToJson(
        _$MygoPackManifestImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'label': instance.label,
      'version_name': instance.versionName,
      'version_code': instance.versionCode,
      'lib_version': instance.libVersion,
      'readme': instance.readme,
    };
