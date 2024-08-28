// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelSearchRespImpl _$$NovelSearchRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelSearchRespImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NovelCover.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      nextKey: json['next_key'] as String? ?? null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelSearchRespImplToJson(
        _$NovelSearchRespImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
      'payload': instance.payload,
    };
