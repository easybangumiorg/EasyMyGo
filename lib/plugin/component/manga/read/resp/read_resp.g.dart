// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadRespImpl _$$ReadRespImplFromJson(Map<String, dynamic> json) =>
    _$ReadRespImpl(
      pictures: (json['pictures'] as List<dynamic>)
          .map((e) => MangaPicture.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int? ?? 0,
      msg: json['msg'] as String? ?? "",
    );

Map<String, dynamic> _$$ReadRespImplToJson(_$ReadRespImpl instance) =>
    <String, dynamic>{
      'pictures': instance.pictures,
      'code': instance.code,
      'msg': instance.msg,
    };
