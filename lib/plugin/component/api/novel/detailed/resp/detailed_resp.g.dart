// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelDetailedRespImpl _$$NovelDetailedRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelDetailedRespImpl(
      detailed: json['detailed'] == null
          ? null
          : NovelDetailed.fromJson(json['detailed'] as Map<String, dynamic>),
      volumes: (json['volumes'] as List<dynamic>?)
          ?.map((e) => NovelVolume.fromJson(e as Map<String, dynamic>))
          .toList(),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelDetailedRespImplToJson(
        _$NovelDetailedRespImpl instance) =>
    <String, dynamic>{
      'detailed': instance.detailed,
      'volumes': instance.volumes,
      'payload': instance.payload,
    };
