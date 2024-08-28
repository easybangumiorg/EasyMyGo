// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_index_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileIndexItemImpl _$$FileIndexItemImplFromJson(Map<String, dynamic> json) =>
    _$FileIndexItemImpl(
      path: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$FileIndexItemImplToJson(_$FileIndexItemImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'size': instance.size,
    };
