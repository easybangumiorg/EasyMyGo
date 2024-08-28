// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelReadRespImpl _$$NovelReadRespImplFromJson(Map<String, dynamic> json) =>
    _$NovelReadRespImpl(
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => NovelChapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelReadRespImplToJson(_$NovelReadRespImpl instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
      'payload': instance.payload,
    };
