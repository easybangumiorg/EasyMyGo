// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelHomeTabImpl _$$NovelHomeTabImplFromJson(Map<String, dynamic> json) =>
    _$NovelHomeTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      hasSecondTab: json['has_second_tab'] as bool,
      jumpPage: json['jump_page'] as bool? ?? false,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$NovelHomeTabImplToJson(_$NovelHomeTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'has_second_tab': instance.hasSecondTab,
      'jump_page': instance.jumpPage,
      'ext': instance.ext,
    };

_$NovelHomeSecondTabImpl _$$NovelHomeSecondTabImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelHomeSecondTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$NovelHomeSecondTabImplToJson(
        _$NovelHomeSecondTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'ext': instance.ext,
    };
