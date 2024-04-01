// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_detailed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelDetailedImpl _$$NovelDetailedImplFromJson(Map<String, dynamic> json) =>
    _$NovelDetailedImpl(
      source: json['source'] as String,
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jump_url'] as String,
      isDetailedLoad: json['is_detailed_load'] as bool? ?? false,
      genre: json['genre'] as String? ?? "",
      description: json['description'] as String? ?? "",
      updateStrategy: $enumDecodeNullable(
              _$NovelUpdateStrategyEnumMap, json['update_strategy']) ??
          NovelUpdateStrategy.always,
      isUpdate: json['isUpdate'] as bool? ?? false,
      status: $enumDecodeNullable(_$NovelStatusEnumMap, json['status']) ??
          NovelStatus.unknown,
      ext: json['ext'] as String? ?? "",
    );

Map<String, dynamic> _$$NovelDetailedImplToJson(_$NovelDetailedImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jump_url': instance.jumpUrl,
      'is_detailed_load': instance.isDetailedLoad,
      'genre': instance.genre,
      'description': instance.description,
      'update_strategy': _$NovelUpdateStrategyEnumMap[instance.updateStrategy]!,
      'isUpdate': instance.isUpdate,
      'status': _$NovelStatusEnumMap[instance.status]!,
      'ext': instance.ext,
    };

const _$NovelUpdateStrategyEnumMap = {
  NovelUpdateStrategy.always: 'always',
  NovelUpdateStrategy.onlyStrict: 'onlyStrict',
  NovelUpdateStrategy.never: 'never',
};

const _$NovelStatusEnumMap = {
  NovelStatus.ongoing: 'ongoing',
  NovelStatus.complete: 'complete',
  NovelStatus.unknown: 'unknown',
};
