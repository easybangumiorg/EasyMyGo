// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaPictureImpl _$$MangaPictureImplFromJson(Map<String, dynamic> json) =>
    _$MangaPictureImpl(
      url: json['url'] as String? ?? "",
      type: $enumDecodeNullable(_$PictureLoadTypeEnumMap, json['type']) ??
          PictureLoadType.normal,
      parameter: (json['parameter'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$MangaPictureImplToJson(_$MangaPictureImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': _$PictureLoadTypeEnumMap[instance.type]!,
      'parameter': instance.parameter,
    };

const _$PictureLoadTypeEnumMap = {
  PictureLoadType.normal: 'normal',
};
