import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_view_strategy.freezed.dart';
part 'web_view_strategy.g.dart';

/// WebView 爬取策略
@freezed
class WebViewStrategy with _$WebViewStrategy {
  factory WebViewStrategy({
    // 超时
    @Default(8000) int timeout,

    // 解码类型
    @Default("utf-8") String encoding,

    // 回调正则，回调正则。在检测到特定请求时返回结果。默认为空则在页面加载完成后自动回调（因为ajax等因素可能得到的源码不完整，另外注意超时）
    @Default(null) @JsonKey(name: "callback_regex") String? callBackRegex,

    // 是否拦截 blob 数据
    @Default(false) @JsonKey(name: "is_intercept_blob") bool isInterceptBlob,

    // UA
    @Default(null) String? userAgent,

    // header
    @Default(null) Map<String, String>? header,

    // 在页面加载完成后执行的js代码，可用于主动加载资源
    @Default(null) String? actionJS,
  }) = _WebViewStrategy;

  factory WebViewStrategy.fromJson(Map<String, Object?> json) =>
      _$WebViewStrategyFromJson(json);
}
