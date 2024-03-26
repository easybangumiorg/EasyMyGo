// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedRespImpl _$$DetailedRespImplFromJson(Map<String, dynamic> json) =>
    _$DetailedRespImpl(
      detailed: json['detailed'] == null
          ? null
          : MangaDetailed.fromJson(json['detailed'] as Map<String, dynamic>),
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => MangaChapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailedRespImplToJson(_$DetailedRespImpl instance) =>
    <String, dynamic>{
      'detailed': instance.detailed,
      'chapters': instance.chapters,
      'payload': instance.payload,
    };
