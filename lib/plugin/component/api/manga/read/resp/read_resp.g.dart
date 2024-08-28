// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaReadRespImpl _$$MangaReadRespImplFromJson(Map<String, dynamic> json) =>
    _$MangaReadRespImpl(
      pictures: (json['pictures'] as List<dynamic>?)
              ?.map((e) => MangaPicture.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaReadRespImplToJson(_$MangaReadRespImpl instance) =>
    <String, dynamic>{
      'pictures': instance.pictures,
      'payload': instance.payload,
    };
