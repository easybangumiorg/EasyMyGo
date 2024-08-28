// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NovelGetHomeTabRespImpl _$$NovelGetHomeTabRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelGetHomeTabRespImpl(
      tabList: (json['tab_list'] as List<dynamic>?)
          ?.map((e) => BookHomeTab.fromJson(e as Map<String, dynamic>))
          .toList(),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelGetHomeTabRespImplToJson(
        _$NovelGetHomeTabRespImpl instance) =>
    <String, dynamic>{
      'tab_list': instance.tabList,
      'payload': instance.payload,
    };

_$NovelGetSecondTabRespImpl _$$NovelGetSecondTabRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelGetSecondTabRespImpl(
      tabList: (json['tab_list'] as List<dynamic>?)
          ?.map((e) => BookSecondTab.fromJson(e as Map<String, dynamic>))
          .toList(),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelGetSecondTabRespImplToJson(
        _$NovelGetSecondTabRespImpl instance) =>
    <String, dynamic>{
      'tab_list': instance.tabList,
      'payload': instance.payload,
    };

_$NovelGetHomePageRespImpl _$$NovelGetHomePageRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelGetHomePageRespImpl(
      page: json['page'] == null
          ? null
          : NovelHomePage.fromJson(json['page'] as Map<String, dynamic>),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelGetHomePageRespImplToJson(
        _$NovelGetHomePageRespImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'payload': instance.payload,
    };

_$NovelGetHomeCoverRespImpl _$$NovelGetHomeCoverRespImplFromJson(
        Map<String, dynamic> json) =>
    _$NovelGetHomeCoverRespImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NovelCover.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextKey: json['next_key'] as String?,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NovelGetHomeCoverRespImplToJson(
        _$NovelGetHomeCoverRespImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
      'payload': instance.payload,
    };
