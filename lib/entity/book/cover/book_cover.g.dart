// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookCoverImpl _$$BookCoverImplFromJson(Map<String, dynamic> json) =>
    _$BookCoverImpl(
      type: $enumDecode(_$SourceTypeEnumMap, json['type']),
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jump_url'] as String,
      source: json['source'] as String,
      ext: json['ext'] as String,
    );

Map<String, dynamic> _$$BookCoverImplToJson(_$BookCoverImpl instance) =>
    <String, dynamic>{
      'type': _$SourceTypeEnumMap[instance.type]!,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jump_url': instance.jumpUrl,
      'source': instance.source,
      'ext': instance.ext,
    };

const _$SourceTypeEnumMap = {
  SourceType.manga: 'manga',
  SourceType.novel: 'novel',
};
