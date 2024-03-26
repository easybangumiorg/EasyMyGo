// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRespImpl _$$SearchRespImplFromJson(Map<String, dynamic> json) =>
    _$SearchRespImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MangaCover.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      nextKey: json['next_key'] as String? ?? null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchRespImplToJson(_$SearchRespImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
      'payload': instance.payload,
    };
