// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaHomePageImpl _$$MangaHomePageImplFromJson(Map<String, dynamic> json) =>
    _$MangaHomePageImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      hasCover: json['has_cover'] as bool? ?? true,
      initKey: json['init_key'] as String? ?? '',
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$MangaHomePageImplToJson(_$MangaHomePageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'has_cover': instance.hasCover,
      'init_key': instance.initKey,
      'ext': instance.ext,
    };
