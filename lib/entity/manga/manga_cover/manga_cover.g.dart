// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaCoverImpl _$$MangaCoverImplFromJson(Map<String, dynamic> json) =>
    _$MangaCoverImpl(
      source: json['source'] as String,
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jumpUrl'] as String,
      ext: json['ext'] as String? ?? "",
    );

Map<String, dynamic> _$$MangaCoverImplToJson(_$MangaCoverImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jumpUrl': instance.jumpUrl,
      'ext': instance.ext,
    };
