// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebViewRespImpl _$$WebViewRespImplFromJson(Map<String, dynamic> json) =>
    _$WebViewRespImpl(
      strategy:
          WebViewStrategy.fromJson(json['strategy'] as Map<String, dynamic>),
      url: json['url'] as String,
      isTimeout: json['is_timeout'] as bool? ?? false,
      content: json['content'] as String? ?? "",
      interceptResource: json['intercept_resource'] as String? ?? "",
    );

Map<String, dynamic> _$$WebViewRespImplToJson(_$WebViewRespImpl instance) =>
    <String, dynamic>{
      'strategy': instance.strategy,
      'url': instance.url,
      'is_timeout': instance.isTimeout,
      'content': instance.content,
      'intercept_resource': instance.interceptResource,
    };
