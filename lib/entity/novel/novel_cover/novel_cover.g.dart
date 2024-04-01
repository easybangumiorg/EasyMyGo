// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelCoverImpl _$$NovelCoverImplFromJson(Map<String, dynamic> json) =>
    _$NovelCoverImpl(
      source: json['source'] as String,
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jump_url'] as String,
      ext: json['ext'] as String? ?? "",
    );

Map<String, dynamic> _$$NovelCoverImplToJson(_$NovelCoverImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jump_url': instance.jumpUrl,
      'ext': instance.ext,
    };
