// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaHomeTabImpl _$$MangaHomeTabImplFromJson(Map<String, dynamic> json) =>
    _$MangaHomeTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      hasSecondTab: json['has_second_tab'] as bool,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$MangaHomeTabImplToJson(_$MangaHomeTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'has_second_tab': instance.hasSecondTab,
      'ext': instance.ext,
    };

_$MangaHomeSecondTabImpl _$$MangaHomeSecondTabImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaHomeSecondTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$MangaHomeSecondTabImplToJson(
        _$MangaHomeSecondTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'ext': instance.ext,
    };
