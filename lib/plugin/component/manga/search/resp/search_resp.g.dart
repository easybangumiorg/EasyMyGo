// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRespImpl _$$SearchRespImplFromJson(Map<String, dynamic> json) =>
    _$SearchRespImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MangaCover.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextKey: json['next_key'] as String?,
      code: json['code'] as int? ?? 0,
      msg: json['msg'] as String? ?? "",
    );

Map<String, dynamic> _$$SearchRespImplToJson(_$SearchRespImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
      'code': instance.code,
      'msg': instance.msg,
    };
