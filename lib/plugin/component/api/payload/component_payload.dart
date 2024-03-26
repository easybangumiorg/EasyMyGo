import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_payload.g.dart';
part 'component_payload.freezed.dart';

/// 所有 Component 的 所有方法都附带一个该负载，用于返回错误信息等
@freezed
class ComponentPayload with _$ComponentPayload {

  // 调用错误 - 插件崩溃，运行时调用错误等
  static const codeCallError = -10086;

  // 解析错误 - 插件返回的数据无法解析成对应实体
  static const codeParseResultError = -10085;

  factory ComponentPayload({
    // 特别的小于 -10086 为调用错误
    // 其他为业务端自行返回的错误码
    @JsonKey(name: "code") @Default(0) int code,
    @JsonKey(name: "msg") @Default("") String msg,

    // 业务端返回的解析前的原始数据
    @JsonKey(name: "raw") @Default("") dynamic raw,
  }) = _ComponentPayload;

  factory ComponentPayload.fromJson(Map<String, Object?> json) =>
      _$ComponentPayloadFromJson(json);
}
