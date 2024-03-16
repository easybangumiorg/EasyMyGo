// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaPictureImpl _$$MangaPictureImplFromJson(Map<String, dynamic> json) =>
    _$MangaPictureImpl(
      url: json['url'] as String? ?? "",
      type: $enumDecodeNullable(_$PictureTypeEnumMap, json['type']) ??
          PictureType.normal,
      parameter: (json['parameter'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$MangaPictureImplToJson(_$MangaPictureImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': _$PictureTypeEnumMap[instance.type]!,
      'parameter': instance.parameter,
    };

const _$PictureTypeEnumMap = {
  PictureType.normal: 'normal',
};
