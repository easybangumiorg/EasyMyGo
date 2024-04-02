// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_view_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebViewResp _$WebViewRespFromJson(Map<String, dynamic> json) {
  return _WebViewResp.fromJson(json);
}

/// @nodoc
mixin _$WebViewResp {
// 当次结果的策略
  WebViewStrategy get strategy => throw _privateConstructorUsedError; // url
  String get url => throw _privateConstructorUsedError; // 是否是超时
  @JsonKey(name: "is_timeout")
  bool get isTimeout => throw _privateConstructorUsedError; // 回调时当前页面的数据
  String get content => throw _privateConstructorUsedError; // 命中回调正则的资源字段
  @JsonKey(name: "intercept_resource")
  String get interceptResource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebViewRespCopyWith<WebViewResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebViewRespCopyWith<$Res> {
  factory $WebViewRespCopyWith(
          WebViewResp value, $Res Function(WebViewResp) then) =
      _$WebViewRespCopyWithImpl<$Res, WebViewResp>;
  @useResult
  $Res call(
      {WebViewStrategy strategy,
      String url,
      @JsonKey(name: "is_timeout") bool isTimeout,
      String content,
      @JsonKey(name: "intercept_resource") String interceptResource});

  $WebViewStrategyCopyWith<$Res> get strategy;
}

/// @nodoc
class _$WebViewRespCopyWithImpl<$Res, $Val extends WebViewResp>
    implements $WebViewRespCopyWith<$Res> {
  _$WebViewRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategy = null,
    Object? url = null,
    Object? isTimeout = null,
    Object? content = null,
    Object? interceptResource = null,
  }) {
    return _then(_value.copyWith(
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as WebViewStrategy,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isTimeout: null == isTimeout
          ? _value.isTimeout
          : isTimeout // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      interceptResource: null == interceptResource
          ? _value.interceptResource
          : interceptResource // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebViewStrategyCopyWith<$Res> get strategy {
    return $WebViewStrategyCopyWith<$Res>(_value.strategy, (value) {
      return _then(_value.copyWith(strategy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebViewRespImplCopyWith<$Res>
    implements $WebViewRespCopyWith<$Res> {
  factory _$$WebViewRespImplCopyWith(
          _$WebViewRespImpl value, $Res Function(_$WebViewRespImpl) then) =
      __$$WebViewRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WebViewStrategy strategy,
      String url,
      @JsonKey(name: "is_timeout") bool isTimeout,
      String content,
      @JsonKey(name: "intercept_resource") String interceptResource});

  @override
  $WebViewStrategyCopyWith<$Res> get strategy;
}

/// @nodoc
class __$$WebViewRespImplCopyWithImpl<$Res>
    extends _$WebViewRespCopyWithImpl<$Res, _$WebViewRespImpl>
    implements _$$WebViewRespImplCopyWith<$Res> {
  __$$WebViewRespImplCopyWithImpl(
      _$WebViewRespImpl _value, $Res Function(_$WebViewRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategy = null,
    Object? url = null,
    Object? isTimeout = null,
    Object? content = null,
    Object? interceptResource = null,
  }) {
    return _then(_$WebViewRespImpl(
      strategy: null == strategy
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as WebViewStrategy,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isTimeout: null == isTimeout
          ? _value.isTimeout
          : isTimeout // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      interceptResource: null == interceptResource
          ? _value.interceptResource
          : interceptResource // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebViewRespImpl implements _WebViewResp {
  _$WebViewRespImpl(
      {required this.strategy,
      required this.url,
      @JsonKey(name: "is_timeout") this.isTimeout = false,
      this.content = "",
      @JsonKey(name: "intercept_resource") this.interceptResource = ""});

  factory _$WebViewRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebViewRespImplFromJson(json);

// 当次结果的策略
  @override
  final WebViewStrategy strategy;
// url
  @override
  final String url;
// 是否是超时
  @override
  @JsonKey(name: "is_timeout")
  final bool isTimeout;
// 回调时当前页面的数据
  @override
  @JsonKey()
  final String content;
// 命中回调正则的资源字段
  @override
  @JsonKey(name: "intercept_resource")
  final String interceptResource;

  @override
  String toString() {
    return 'WebViewResp(strategy: $strategy, url: $url, isTimeout: $isTimeout, content: $content, interceptResource: $interceptResource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebViewRespImpl &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isTimeout, isTimeout) ||
                other.isTimeout == isTimeout) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.interceptResource, interceptResource) ||
                other.interceptResource == interceptResource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, strategy, url, isTimeout, content, interceptResource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebViewRespImplCopyWith<_$WebViewRespImpl> get copyWith =>
      __$$WebViewRespImplCopyWithImpl<_$WebViewRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebViewRespImplToJson(
      this,
    );
  }
}

abstract class _WebViewResp implements WebViewResp {
  factory _WebViewResp(
      {required final WebViewStrategy strategy,
      required final String url,
      @JsonKey(name: "is_timeout") final bool isTimeout,
      final String content,
      @JsonKey(name: "intercept_resource")
      final String interceptResource}) = _$WebViewRespImpl;

  factory _WebViewResp.fromJson(Map<String, dynamic> json) =
      _$WebViewRespImpl.fromJson;

  @override // 当次结果的策略
  WebViewStrategy get strategy;
  @override // url
  String get url;
  @override // 是否是超时
  @JsonKey(name: "is_timeout")
  bool get isTimeout;
  @override // 回调时当前页面的数据
  String get content;
  @override // 命中回调正则的资源字段
  @JsonKey(name: "intercept_resource")
  String get interceptResource;
  @override
  @JsonKey(ignore: true)
  _$$WebViewRespImplCopyWith<_$WebViewRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
