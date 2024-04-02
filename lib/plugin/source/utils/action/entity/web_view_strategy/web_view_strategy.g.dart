// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_view_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebViewStrategyImpl _$$WebViewStrategyImplFromJson(
        Map<String, dynamic> json) =>
    _$WebViewStrategyImpl(
      timeout: json['timeout'] as int? ?? 8000,
      encoding: json['encoding'] as String? ?? "utf-8",
      callBackRegex: json['callback_regex'] as String? ?? null,
      isInterceptBlob: json['is_intercept_blob'] as bool? ?? false,
      userAgent: json['userAgent'] as String? ?? null,
      header: (json['header'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          null,
      actionJS: json['actionJS'] as String? ?? null,
    );

Map<String, dynamic> _$$WebViewStrategyImplToJson(
        _$WebViewStrategyImpl instance) =>
    <String, dynamic>{
      'timeout': instance.timeout,
      'encoding': instance.encoding,
      'callback_regex': instance.callBackRegex,
      'is_intercept_blob': instance.isInterceptBlob,
      'userAgent': instance.userAgent,
      'header': instance.header,
      'actionJS': instance.actionJS,
    };
