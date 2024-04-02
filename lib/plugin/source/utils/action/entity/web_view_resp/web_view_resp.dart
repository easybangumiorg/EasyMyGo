import 'package:easy_mygo/plugin/source/utils/action/entity/web_view_strategy/web_view_strategy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_view_resp.freezed.dart';
part 'web_view_resp.g.dart';

/// WebView 爬取结果
@freezed
class WebViewResp with _$WebViewResp {
  factory WebViewResp({
    // 当次结果的策略
    required WebViewStrategy strategy,

    // url
    required String url,

    // 是否是超时
    @Default(false) @JsonKey(name: "is_timeout") bool isTimeout,

    // 回调时当前页面的数据
    @Default("") String content,

    // 命中回调正则的资源字段
    @Default("") @JsonKey(name: "intercept_resource") String interceptResource,
  }) = _WebViewResp;

  factory WebViewResp.fromJson(Map<String, Object?> json) =>
      _$WebViewRespFromJson(json);
}
