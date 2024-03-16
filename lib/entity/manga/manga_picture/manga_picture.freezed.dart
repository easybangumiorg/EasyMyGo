// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaPicture _$MangaPictureFromJson(Map<String, dynamic> json) {
  return _MangaPicture.fromJson(json);
}

/// @nodoc
mixin _$MangaPicture {
// 图片 Url
  String get url => throw _privateConstructorUsedError;
  PictureLoadType get type => throw _privateConstructorUsedError;
  Map<String, String> get parameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaPictureCopyWith<MangaPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaPictureCopyWith<$Res> {
  factory $MangaPictureCopyWith(
          MangaPicture value, $Res Function(MangaPicture) then) =
      _$MangaPictureCopyWithImpl<$Res, MangaPicture>;
  @useResult
  $Res call({String url, PictureLoadType type, Map<String, String> parameter});
}

/// @nodoc
class _$MangaPictureCopyWithImpl<$Res, $Val extends MangaPicture>
    implements $MangaPictureCopyWith<$Res> {
  _$MangaPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? parameter = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PictureLoadType,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaPictureImplCopyWith<$Res>
    implements $MangaPictureCopyWith<$Res> {
  factory _$$MangaPictureImplCopyWith(
          _$MangaPictureImpl value, $Res Function(_$MangaPictureImpl) then) =
      __$$MangaPictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, PictureLoadType type, Map<String, String> parameter});
}

/// @nodoc
class __$$MangaPictureImplCopyWithImpl<$Res>
    extends _$MangaPictureCopyWithImpl<$Res, _$MangaPictureImpl>
    implements _$$MangaPictureImplCopyWith<$Res> {
  __$$MangaPictureImplCopyWithImpl(
      _$MangaPictureImpl _value, $Res Function(_$MangaPictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
    Object? parameter = null,
  }) {
    return _then(_$MangaPictureImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PictureLoadType,
      parameter: null == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaPictureImpl implements _MangaPicture {
  _$MangaPictureImpl(
      {this.url = "",
      this.type = PictureLoadType.normal,
      final Map<String, String> parameter = const {}})
      : _parameter = parameter;

  factory _$MangaPictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaPictureImplFromJson(json);

// 图片 Url
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final PictureLoadType type;
  final Map<String, String> _parameter;
  @override
  @JsonKey()
  Map<String, String> get parameter {
    if (_parameter is EqualUnmodifiableMapView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameter);
  }

  @override
  String toString() {
    return 'MangaPicture(url: $url, type: $type, parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaPictureImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, url, type, const DeepCollectionEquality().hash(_parameter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaPictureImplCopyWith<_$MangaPictureImpl> get copyWith =>
      __$$MangaPictureImplCopyWithImpl<_$MangaPictureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaPictureImplToJson(
      this,
    );
  }
}

abstract class _MangaPicture implements MangaPicture {
  factory _MangaPicture(
      {final String url,
      final PictureLoadType type,
      final Map<String, String> parameter}) = _$MangaPictureImpl;

  factory _MangaPicture.fromJson(Map<String, dynamic> json) =
      _$MangaPictureImpl.fromJson;

  @override // 图片 Url
  String get url;
  @override
  PictureLoadType get type;
  @override
  Map<String, String> get parameter;
  @override
  @JsonKey(ignore: true)
  _$$MangaPictureImplCopyWith<_$MangaPictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
