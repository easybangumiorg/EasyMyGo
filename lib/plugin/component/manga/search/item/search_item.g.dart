// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchItemImpl _$$SearchItemImplFromJson(Map<String, dynamic> json) =>
    _$SearchItemImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MangaCover.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextKey: json['next_key'] as String?,
    );

Map<String, dynamic> _$$SearchItemImplToJson(_$SearchItemImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
    };
