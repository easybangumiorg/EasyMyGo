// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelChapterImpl _$$NovelChapterImplFromJson(Map<String, dynamic> json) =>
    _$NovelChapterImpl(
      label: json['label'] as String,
      id: json['id'] as String,
      src: json['src'] as String,
      loadFrom: $enumDecodeNullable(
              _$NovelChapterLoadFromEnumMap, json['load_from']) ??
          NovelChapterLoadFrom.direct,
      loadType: $enumDecodeNullable(
              _$NovelChapterLoadTypeEnumMap, json['load_type']) ??
          NovelChapterLoadType.html,
      parameter: (json['parameter'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$NovelChapterImplToJson(_$NovelChapterImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'id': instance.id,
      'src': instance.src,
      'load_from': _$NovelChapterLoadFromEnumMap[instance.loadFrom]!,
      'load_type': _$NovelChapterLoadTypeEnumMap[instance.loadType]!,
      'parameter': instance.parameter,
    };

const _$NovelChapterLoadFromEnumMap = {
  NovelChapterLoadFrom.url: 'url',
  NovelChapterLoadFrom.direct: 'direct',
};

const _$NovelChapterLoadTypeEnumMap = {
  NovelChapterLoadType.epub: 'epub',
  NovelChapterLoadType.txt: 'txt',
  NovelChapterLoadType.pdf: 'pdf',
  NovelChapterLoadType.html: 'html',
};
