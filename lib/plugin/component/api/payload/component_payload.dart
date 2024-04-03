import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_payload.g.dart';
part 'component_payload.freezed.dart';

/// 所有 Component 的 所有方法都附带一个该负载，用于返回错误信息等
@freezed
class ComponentPayload with _$ComponentPayload {

  static ComponentPayload ok() => ComponentPayload();

  // 调用错误 - 插件崩溃，运行时调用错误等
  static const codeCallError = -10086;

  // 解析错误 - 插件返回的数据无法解析成对应实体
  static const codeParseResultError = -10085;

  // 业务错误 - 一般是插件手动抛出的异常
  static const codeBusinessError = -10084;

  factory ComponentPayload({
    @JsonKey(name: "code") @Default(0) int code,
    @JsonKey(name: "msg") @Default("") String msg,

    // 业务端返回的解析前的原始数据
    @JsonKey(name: "raw") @Default("") dynamic raw,
  }) = _ComponentPayload;

  factory ComponentPayload.fromJson(Map<String, Object?> json) =>
      _$ComponentPayloadFromJson(json);
}

extension ComponentPayloadExt on ComponentPayload{
  static final _errorMsgValues = Expando<String>();
  String get errorMsg {
    return _errorMsgValues[this] ??= "${
      code == ComponentPayload.codeCallError ? "调用错误 $msg" :
      code == ComponentPayload.codeParseResultError ? "解析错误 $msg" :
      code == ComponentPayload.codeBusinessError ? msg :
      "未知错误 $code $msg"
    } ";
  }
}
