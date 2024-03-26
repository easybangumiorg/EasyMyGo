// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComponentPayloadImpl _$$ComponentPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ComponentPayloadImpl(
      code: json['code'] as int? ?? 0,
      msg: json['msg'] as String? ?? "",
      raw: json['raw'] ?? "",
    );

Map<String, dynamic> _$$ComponentPayloadImplToJson(
        _$ComponentPayloadImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'raw': instance.raw,
    };
