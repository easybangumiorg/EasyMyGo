// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_view_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebViewStrategy _$WebViewStrategyFromJson(Map<String, dynamic> json) {
  return _WebViewStrategy.fromJson(json);
}

/// @nodoc
mixin _$WebViewStrategy {
// 超时
  int get timeout => throw _privateConstructorUsedError; // 解码类型
  String get encoding =>
      throw _privateConstructorUsedError; // 回调正则，回调正则。在检测到特定请求时返回结果。默认为空则在页面加载完成后自动回调（因为ajax等因素可能得到的源码不完整，另外注意超时）
  @JsonKey(name: "callback_regex")
  String? get callBackRegex =>
      throw _privateConstructorUsedError; // 是否拦截 blob 数据
  @JsonKey(name: "is_intercept_blob")
  bool get isInterceptBlob => throw _privateConstructorUsedError; // UA
  String? get userAgent => throw _privateConstructorUsedError; // header
  Map<String, String>? get header =>
      throw _privateConstructorUsedError; // 在页面加载完成后执行的js代码，可用于主动加载资源
  String? get actionJS => throw _privateConstructorUsedError;

  /// Serializes this WebViewStrategy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebViewStrategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebViewStrategyCopyWith<WebViewStrategy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebViewStrategyCopyWith<$Res> {
  factory $WebViewStrategyCopyWith(
          WebViewStrategy value, $Res Function(WebViewStrategy) then) =
      _$WebViewStrategyCopyWithImpl<$Res, WebViewStrategy>;
  @useResult
  $Res call(
      {int timeout,
      String encoding,
      @JsonKey(name: "callback_regex") String? callBackRegex,
      @JsonKey(name: "is_intercept_blob") bool isInterceptBlob,
      String? userAgent,
      Map<String, String>? header,
      String? actionJS});
}

/// @nodoc
class _$WebViewStrategyCopyWithImpl<$Res, $Val extends WebViewStrategy>
    implements $WebViewStrategyCopyWith<$Res> {
  _$WebViewStrategyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebViewStrategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeout = null,
    Object? encoding = null,
    Object? callBackRegex = freezed,
    Object? isInterceptBlob = null,
    Object? userAgent = freezed,
    Object? header = freezed,
    Object? actionJS = freezed,
  }) {
    return _then(_value.copyWith(
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      callBackRegex: freezed == callBackRegex
          ? _value.callBackRegex
          : callBackRegex // ignore: cast_nullable_to_non_nullable
              as String?,
      isInterceptBlob: null == isInterceptBlob
          ? _value.isInterceptBlob
          : isInterceptBlob // ignore: cast_nullable_to_non_nullable
              as bool,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      actionJS: freezed == actionJS
          ? _value.actionJS
          : actionJS // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebViewStrategyImplCopyWith<$Res>
    implements $WebViewStrategyCopyWith<$Res> {
  factory _$$WebViewStrategyImplCopyWith(_$WebViewStrategyImpl value,
          $Res Function(_$WebViewStrategyImpl) then) =
      __$$WebViewStrategyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timeout,
      String encoding,
      @JsonKey(name: "callback_regex") String? callBackRegex,
      @JsonKey(name: "is_intercept_blob") bool isInterceptBlob,
      String? userAgent,
      Map<String, String>? header,
      String? actionJS});
}

/// @nodoc
class __$$WebViewStrategyImplCopyWithImpl<$Res>
    extends _$WebViewStrategyCopyWithImpl<$Res, _$WebViewStrategyImpl>
    implements _$$WebViewStrategyImplCopyWith<$Res> {
  __$$WebViewStrategyImplCopyWithImpl(
      _$WebViewStrategyImpl _value, $Res Function(_$WebViewStrategyImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebViewStrategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeout = null,
    Object? encoding = null,
    Object? callBackRegex = freezed,
    Object? isInterceptBlob = null,
    Object? userAgent = freezed,
    Object? header = freezed,
    Object? actionJS = freezed,
  }) {
    return _then(_$WebViewStrategyImpl(
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      callBackRegex: freezed == callBackRegex
          ? _value.callBackRegex
          : callBackRegex // ignore: cast_nullable_to_non_nullable
              as String?,
      isInterceptBlob: null == isInterceptBlob
          ? _value.isInterceptBlob
          : isInterceptBlob // ignore: cast_nullable_to_non_nullable
              as bool,
      userAgent: freezed == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      actionJS: freezed == actionJS
          ? _value.actionJS
          : actionJS // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebViewStrategyImpl implements _WebViewStrategy {
  _$WebViewStrategyImpl(
      {this.timeout = 8000,
      this.encoding = "utf-8",
      @JsonKey(name: "callback_regex") this.callBackRegex = null,
      @JsonKey(name: "is_intercept_blob") this.isInterceptBlob = false,
      this.userAgent = null,
      final Map<String, String>? header = null,
      this.actionJS = null})
      : _header = header;

  factory _$WebViewStrategyImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebViewStrategyImplFromJson(json);

// 超时
  @override
  @JsonKey()
  final int timeout;
// 解码类型
  @override
  @JsonKey()
  final String encoding;
// 回调正则，回调正则。在检测到特定请求时返回结果。默认为空则在页面加载完成后自动回调（因为ajax等因素可能得到的源码不完整，另外注意超时）
  @override
  @JsonKey(name: "callback_regex")
  final String? callBackRegex;
// 是否拦截 blob 数据
  @override
  @JsonKey(name: "is_intercept_blob")
  final bool isInterceptBlob;
// UA
  @override
  @JsonKey()
  final String? userAgent;
// header
  final Map<String, String>? _header;
// header
  @override
  @JsonKey()
  Map<String, String>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableMapView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// 在页面加载完成后执行的js代码，可用于主动加载资源
  @override
  @JsonKey()
  final String? actionJS;

  @override
  String toString() {
    return 'WebViewStrategy(timeout: $timeout, encoding: $encoding, callBackRegex: $callBackRegex, isInterceptBlob: $isInterceptBlob, userAgent: $userAgent, header: $header, actionJS: $actionJS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebViewStrategyImpl &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.callBackRegex, callBackRegex) ||
                other.callBackRegex == callBackRegex) &&
            (identical(other.isInterceptBlob, isInterceptBlob) ||
                other.isInterceptBlob == isInterceptBlob) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            const DeepCollectionEquality().equals(other._header, _header) &&
            (identical(other.actionJS, actionJS) ||
                other.actionJS == actionJS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeout,
      encoding,
      callBackRegex,
      isInterceptBlob,
      userAgent,
      const DeepCollectionEquality().hash(_header),
      actionJS);

  /// Create a copy of WebViewStrategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebViewStrategyImplCopyWith<_$WebViewStrategyImpl> get copyWith =>
      __$$WebViewStrategyImplCopyWithImpl<_$WebViewStrategyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebViewStrategyImplToJson(
      this,
    );
  }
}

abstract class _WebViewStrategy implements WebViewStrategy {
  factory _WebViewStrategy(
      {final int timeout,
      final String encoding,
      @JsonKey(name: "callback_regex") final String? callBackRegex,
      @JsonKey(name: "is_intercept_blob") final bool isInterceptBlob,
      final String? userAgent,
      final Map<String, String>? header,
      final String? actionJS}) = _$WebViewStrategyImpl;

  factory _WebViewStrategy.fromJson(Map<String, dynamic> json) =
      _$WebViewStrategyImpl.fromJson;

// 超时
  @override
  int get timeout; // 解码类型
  @override
  String
      get encoding; // 回调正则，回调正则。在检测到特定请求时返回结果。默认为空则在页面加载完成后自动回调（因为ajax等因素可能得到的源码不完整，另外注意超时）
  @override
  @JsonKey(name: "callback_regex")
  String? get callBackRegex; // 是否拦截 blob 数据
  @override
  @JsonKey(name: "is_intercept_blob")
  bool get isInterceptBlob; // UA
  @override
  String? get userAgent; // header
  @override
  Map<String, String>? get header; // 在页面加载完成后执行的js代码，可用于主动加载资源
  @override
  String? get actionJS;

  /// Create a copy of WebViewStrategy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebViewStrategyImplCopyWith<_$WebViewStrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
