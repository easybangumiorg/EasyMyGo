// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaChapterImpl _$$MangaChapterImplFromJson(Map<String, dynamic> json) =>
    _$MangaChapterImpl(
      label: json['label'] as String,
      id: json['id'] as String,
      showType:
          $enumDecodeNullable(_$ChapterShowTypeEnumMap, json['show_type']) ??
              ChapterShowType.normal,
      parameter: (json['parameter'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$MangaChapterImplToJson(_$MangaChapterImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'id': instance.id,
      'show_type': _$ChapterShowTypeEnumMap[instance.showType]!,
      'parameter': instance.parameter,
    };

const _$ChapterShowTypeEnumMap = {
  ChapterShowType.normal: 'normal',
  ChapterShowType.singlePicture: 'singlePicture',
};
