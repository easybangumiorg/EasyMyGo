// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaGetHomeTabRespImpl _$$MangaGetHomeTabRespImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaGetHomeTabRespImpl(
      tabList: (json['tab_list'] as List<dynamic>?)
              ?.map((e) => BookHomeTab.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaGetHomeTabRespImplToJson(
        _$MangaGetHomeTabRespImpl instance) =>
    <String, dynamic>{
      'tab_list': instance.tabList,
      'payload': instance.payload,
    };

_$MangaGetSecondTabRespImpl _$$MangaGetSecondTabRespImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaGetSecondTabRespImpl(
      tabList: (json['tab_list'] as List<dynamic>?)
              ?.map((e) => BookSecondTab.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaGetSecondTabRespImplToJson(
        _$MangaGetSecondTabRespImpl instance) =>
    <String, dynamic>{
      'tab_list': instance.tabList,
      'payload': instance.payload,
    };

_$MangaGetHomePageRespImpl _$$MangaGetHomePageRespImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaGetHomePageRespImpl(
      page: json['page'] == null
          ? null
          : MangaHomePage.fromJson(json['page'] as Map<String, dynamic>),
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaGetHomePageRespImplToJson(
        _$MangaGetHomePageRespImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'payload': instance.payload,
    };

_$MangaGetHomeCoverRespImpl _$$MangaGetHomeCoverRespImplFromJson(
        Map<String, dynamic> json) =>
    _$MangaGetHomeCoverRespImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MangaCover.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      nextKey: json['next_key'] as String? ?? null,
      payload:
          ComponentPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MangaGetHomeCoverRespImplToJson(
        _$MangaGetHomeCoverRespImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'next_key': instance.nextKey,
      'payload': instance.payload,
    };
