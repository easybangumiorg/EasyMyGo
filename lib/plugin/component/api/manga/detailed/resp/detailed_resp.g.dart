// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaDetailedRespImpl _$$MangaDetailedRespImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaDetailedRespImpl(
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

Map<String, dynamic> _$$MangaDetailedRespImplToJson(
        _$MangaDetailedRespImpl instance) =>
    <String, dynamic>{
      'detailed': instance.detailed,
      'chapters': instance.chapters,
      'payload': instance.payload,
    };
