// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedRespImpl _$$DetailedRespImplFromJson(Map<String, dynamic> json) =>
    _$DetailedRespImpl(
      detailed:
          MangaDetailed.fromJson(json['detailed'] as Map<String, dynamic>),
      detailedCode: json['detailed_code'] as int? ?? 0,
      detailedMsg: json['detailed_msg'] as String? ?? "",
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => MangaChapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      chaptersCode: json['chapters_code'] as int? ?? 0,
      chaptersMsg: json['chapters_msg'] as String? ?? "",
    );

Map<String, dynamic> _$$DetailedRespImplToJson(_$DetailedRespImpl instance) =>
    <String, dynamic>{
      'detailed': instance.detailed,
      'detailed_code': instance.detailedCode,
      'detailed_msg': instance.detailedMsg,
      'chapters': instance.chapters,
      'chapters_code': instance.chaptersCode,
      'chapters_msg': instance.chaptersMsg,
    };
