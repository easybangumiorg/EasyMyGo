// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_detailed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaDetailedImpl _$$MangaDetailedImplFromJson(Map<String, dynamic> json) =>
    _$MangaDetailedImpl(
      source: json['source'] as String,
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jumpUrl'] as String,
      isDetailedLoad: json['isDetailedLoad'] as bool? ?? false,
      genre: json['genre'] as String? ?? "",
      description: json['description'] as String? ?? "",
      updateStrategy: $enumDecodeNullable(
              _$MangaUpdateStrategyEnumMap, json['updateStrategy']) ??
          MangaUpdateStrategy.always,
      isUpdate: json['isUpdate'] as bool? ?? false,
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.unknown,
      ext: json['ext'] as String? ?? "",
    );

Map<String, dynamic> _$$MangaDetailedImplToJson(_$MangaDetailedImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jumpUrl': instance.jumpUrl,
      'isDetailedLoad': instance.isDetailedLoad,
      'genre': instance.genre,
      'description': instance.description,
      'updateStrategy': _$MangaUpdateStrategyEnumMap[instance.updateStrategy]!,
      'isUpdate': instance.isUpdate,
      'status': _$MangaStatusEnumMap[instance.status]!,
      'ext': instance.ext,
    };

const _$MangaUpdateStrategyEnumMap = {
  MangaUpdateStrategy.always: 'always',
  MangaUpdateStrategy.onlyStrict: 'onlyStrict',
  MangaUpdateStrategy.never: 'never',
};

const _$MangaStatusEnumMap = {
  MangaStatus.ongoing: 'ongoing',
  MangaStatus.complete: 'complete',
  MangaStatus.unknown: 'unknown',
};
