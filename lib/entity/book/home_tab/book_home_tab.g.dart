// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_home_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookHomeTabImpl _$$BookHomeTabImplFromJson(Map<String, dynamic> json) =>
    _$BookHomeTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      hasSecondTab: json['has_second_tab'] as bool,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$BookHomeTabImplToJson(_$BookHomeTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'has_second_tab': instance.hasSecondTab,
      'ext': instance.ext,
    };

_$BookSecondTabImpl _$$BookSecondTabImplFromJson(Map<String, dynamic> json) =>
    _$BookSecondTabImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      ext: json['ext'] as String? ?? '',
    );

Map<String, dynamic> _$$BookSecondTabImplToJson(_$BookSecondTabImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'ext': instance.ext,
    };
