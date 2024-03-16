// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadResp _$ReadRespFromJson(Map<String, dynamic> json) {
  return _ReadResp.fromJson(json);
}

/// @nodoc
mixin _$ReadResp {
  List<MangaPicture> get pictures => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadRespCopyWith<ReadResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadRespCopyWith<$Res> {
  factory $ReadRespCopyWith(ReadResp value, $Res Function(ReadResp) then) =
      _$ReadRespCopyWithImpl<$Res, ReadResp>;
  @useResult
  $Res call({List<MangaPicture> pictures, int code, String msg});
}

/// @nodoc
class _$ReadRespCopyWithImpl<$Res, $Val extends ReadResp>
    implements $ReadRespCopyWith<$Res> {
  _$ReadRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = null,
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MangaPicture>,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadRespImplCopyWith<$Res>
    implements $ReadRespCopyWith<$Res> {
  factory _$$ReadRespImplCopyWith(
          _$ReadRespImpl value, $Res Function(_$ReadRespImpl) then) =
      __$$ReadRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MangaPicture> pictures, int code, String msg});
}

/// @nodoc
class __$$ReadRespImplCopyWithImpl<$Res>
    extends _$ReadRespCopyWithImpl<$Res, _$ReadRespImpl>
    implements _$$ReadRespImplCopyWith<$Res> {
  __$$ReadRespImplCopyWithImpl(
      _$ReadRespImpl _value, $Res Function(_$ReadRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = null,
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$ReadRespImpl(
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<MangaPicture>,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadRespImpl implements _ReadResp {
  _$ReadRespImpl(
      {required final List<MangaPicture> pictures,
      this.code = 0,
      this.msg = ""})
      : _pictures = pictures;

  factory _$ReadRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadRespImplFromJson(json);

  final List<MangaPicture> _pictures;
  @override
  List<MangaPicture> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String msg;

  @override
  String toString() {
    return 'ReadResp(pictures: $pictures, code: $code, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadRespImpl &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pictures), code, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadRespImplCopyWith<_$ReadRespImpl> get copyWith =>
      __$$ReadRespImplCopyWithImpl<_$ReadRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadRespImplToJson(
      this,
    );
  }
}

abstract class _ReadResp implements ReadResp {
  factory _ReadResp(
      {required final List<MangaPicture> pictures,
      final int code,
      final String msg}) = _$ReadRespImpl;

  factory _ReadResp.fromJson(Map<String, dynamic> json) =
      _$ReadRespImpl.fromJson;

  @override
  List<MangaPicture> get pictures;
  @override
  int get code;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ReadRespImplCopyWith<_$ReadRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
