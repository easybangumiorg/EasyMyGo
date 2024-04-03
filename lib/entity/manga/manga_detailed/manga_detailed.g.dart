// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_detailed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaDetailedImpl _$$MangaDetailedImplFromJson(Map<String, dynamic> json) =>
    _$MangaDetailedImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jump_url'] as String,
      isDetailedLoad: json['is_detailed_load'] as bool? ?? false,
      genre: json['genre'] as String? ?? "",
      description: json['description'] as String? ?? "",
      updateStrategy: $enumDecodeNullable(
              _$MangaUpdateStrategyEnumMap, json['update_strategy']) ??
          MangaUpdateStrategy.always,
      isUpdate: json['isUpdate'] as bool? ?? false,
      status: $enumDecodeNullable(_$MangaStatusEnumMap, json['status']) ??
          MangaStatus.unknown,
      ext: json['ext'] as String? ?? "",
      source: json['source'] as String? ?? "",
    );

Map<String, dynamic> _$$MangaDetailedImplToJson(_$MangaDetailedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jump_url': instance.jumpUrl,
      'is_detailed_load': instance.isDetailedLoad,
      'genre': instance.genre,
      'description': instance.description,
      'update_strategy': _$MangaUpdateStrategyEnumMap[instance.updateStrategy]!,
      'isUpdate': instance.isUpdate,
      'status': _$MangaStatusEnumMap[instance.status]!,
      'ext': instance.ext,
      'source': instance.source,
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
