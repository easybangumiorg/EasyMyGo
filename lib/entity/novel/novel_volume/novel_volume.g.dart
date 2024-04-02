// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelVolumeImpl _$$NovelVolumeImplFromJson(Map<String, dynamic> json) =>
    _$NovelVolumeImpl(
      label: json['label'] as String,
      id: json['id'] as String,
      organizeType:
          json['organize_type'] ?? NovelVolumeOrganizeType.multiChapter,
      parameter: (json['parameter'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$NovelVolumeImplToJson(_$NovelVolumeImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'id': instance.id,
      'organize_type': instance.organizeType,
      'parameter': instance.parameter,
      'ext': instance.ext,
    };
