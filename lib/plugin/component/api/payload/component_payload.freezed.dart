// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComponentPayload _$ComponentPayloadFromJson(Map<String, dynamic> json) {
  return _ComponentPayload.fromJson(json);
}

/// @nodoc
mixin _$ComponentPayload {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String get msg => throw _privateConstructorUsedError; // 业务端返回的解析前的原始数据
  @JsonKey(name: "raw")
  dynamic get raw => throw _privateConstructorUsedError;

  /// Serializes this ComponentPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComponentPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComponentPayloadCopyWith<ComponentPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentPayloadCopyWith<$Res> {
  factory $ComponentPayloadCopyWith(
          ComponentPayload value, $Res Function(ComponentPayload) then) =
      _$ComponentPayloadCopyWithImpl<$Res, ComponentPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "msg") String msg,
      @JsonKey(name: "raw") dynamic raw});
}

/// @nodoc
class _$ComponentPayloadCopyWithImpl<$Res, $Val extends ComponentPayload>
    implements $ComponentPayloadCopyWith<$Res> {
  _$ComponentPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComponentPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? raw = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComponentPayloadImplCopyWith<$Res>
    implements $ComponentPayloadCopyWith<$Res> {
  factory _$$ComponentPayloadImplCopyWith(_$ComponentPayloadImpl value,
          $Res Function(_$ComponentPayloadImpl) then) =
      __$$ComponentPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "msg") String msg,
      @JsonKey(name: "raw") dynamic raw});
}

/// @nodoc
class __$$ComponentPayloadImplCopyWithImpl<$Res>
    extends _$ComponentPayloadCopyWithImpl<$Res, _$ComponentPayloadImpl>
    implements _$$ComponentPayloadImplCopyWith<$Res> {
  __$$ComponentPayloadImplCopyWithImpl(_$ComponentPayloadImpl _value,
      $Res Function(_$ComponentPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComponentPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? raw = freezed,
  }) {
    return _then(_$ComponentPayloadImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComponentPayloadImpl implements _ComponentPayload {
  _$ComponentPayloadImpl(
      {@JsonKey(name: "code") this.code = 0,
      @JsonKey(name: "msg") this.msg = "",
      @JsonKey(name: "raw") this.raw = ""});

  factory _$ComponentPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComponentPayloadImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "msg")
  final String msg;
// 业务端返回的解析前的原始数据
  @override
  @JsonKey(name: "raw")
  final dynamic raw;

  @override
  String toString() {
    return 'ComponentPayload(code: $code, msg: $msg, raw: $raw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComponentPayloadImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.raw, raw));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, msg, const DeepCollectionEquality().hash(raw));

  /// Create a copy of ComponentPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComponentPayloadImplCopyWith<_$ComponentPayloadImpl> get copyWith =>
      __$$ComponentPayloadImplCopyWithImpl<_$ComponentPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComponentPayloadImplToJson(
      this,
    );
  }
}

abstract class _ComponentPayload implements ComponentPayload {
  factory _ComponentPayload(
      {@JsonKey(name: "code") final int code,
      @JsonKey(name: "msg") final String msg,
      @JsonKey(name: "raw") final dynamic raw}) = _$ComponentPayloadImpl;

  factory _ComponentPayload.fromJson(Map<String, dynamic> json) =
      _$ComponentPayloadImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "msg")
  String get msg; // 业务端返回的解析前的原始数据
  @override
  @JsonKey(name: "raw")
  dynamic get raw;

  /// Create a copy of ComponentPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComponentPayloadImplCopyWith<_$ComponentPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
