// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaCoverImpl _$$MangaCoverImplFromJson(Map<String, dynamic> json) =>
    _$MangaCoverImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jump_url'] as String,
      source: json['source'] as String? ?? "",
      ext: json['ext'] as String? ?? "",
    );

Map<String, dynamic> _$$MangaCoverImplToJson(_$MangaCoverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jump_url': instance.jumpUrl,
      'source': instance.source,
      'ext': instance.ext,
    };
