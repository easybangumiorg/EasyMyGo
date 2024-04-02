// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelHomePage _$NovelHomePageFromJson(Map<String, dynamic> json) {
  return _NovelHomePage.fromJson(json);
}

/// @nodoc
mixin _$NovelHomePage {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError; // 是否有 封面
  @JsonKey(name: "has_cover")
  bool get hasCover => throw _privateConstructorUsedError; // 初始页面 key
  @JsonKey(name: "init_key")
  String get initKey => throw _privateConstructorUsedError; // 可以让源透传一些信息
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelHomePageCopyWith<NovelHomePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelHomePageCopyWith<$Res> {
  factory $NovelHomePageCopyWith(
          NovelHomePage value, $Res Function(NovelHomePage) then) =
      _$NovelHomePageCopyWithImpl<$Res, NovelHomePage>;
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_cover") bool hasCover,
      @JsonKey(name: "init_key") String initKey,
      String ext});
}

/// @nodoc
class _$NovelHomePageCopyWithImpl<$Res, $Val extends NovelHomePage>
    implements $NovelHomePageCopyWith<$Res> {
  _$NovelHomePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? hasCover = null,
    Object? initKey = null,
    Object? ext = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      hasCover: null == hasCover
          ? _value.hasCover
          : hasCover // ignore: cast_nullable_to_non_nullable
              as bool,
      initKey: null == initKey
          ? _value.initKey
          : initKey // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NovelHomePageImplCopyWith<$Res>
    implements $NovelHomePageCopyWith<$Res> {
  factory _$$NovelHomePageImplCopyWith(
          _$NovelHomePageImpl value, $Res Function(_$NovelHomePageImpl) then) =
      __$$NovelHomePageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_cover") bool hasCover,
      @JsonKey(name: "init_key") String initKey,
      String ext});
}

/// @nodoc
class __$$NovelHomePageImplCopyWithImpl<$Res>
    extends _$NovelHomePageCopyWithImpl<$Res, _$NovelHomePageImpl>
    implements _$$NovelHomePageImplCopyWith<$Res> {
  __$$NovelHomePageImplCopyWithImpl(
      _$NovelHomePageImpl _value, $Res Function(_$NovelHomePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? hasCover = null,
    Object? initKey = null,
    Object? ext = null,
  }) {
    return _then(_$NovelHomePageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      hasCover: null == hasCover
          ? _value.hasCover
          : hasCover // ignore: cast_nullable_to_non_nullable
              as bool,
      initKey: null == initKey
          ? _value.initKey
          : initKey // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelHomePageImpl implements _NovelHomePage {
  _$NovelHomePageImpl(
      {required this.id,
      required this.label,
      @JsonKey(name: "has_cover") this.hasCover = true,
      @JsonKey(name: "init_key") this.initKey = '',
      this.ext = ''});

  factory _$NovelHomePageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelHomePageImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
// 是否有 封面
  @override
  @JsonKey(name: "has_cover")
  final bool hasCover;
// 初始页面 key
  @override
  @JsonKey(name: "init_key")
  final String initKey;
// 可以让源透传一些信息
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'NovelHomePage(id: $id, label: $label, hasCover: $hasCover, initKey: $initKey, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelHomePageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hasCover, hasCover) ||
                other.hasCover == hasCover) &&
            (identical(other.initKey, initKey) || other.initKey == initKey) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, hasCover, initKey, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelHomePageImplCopyWith<_$NovelHomePageImpl> get copyWith =>
      __$$NovelHomePageImplCopyWithImpl<_$NovelHomePageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelHomePageImplToJson(
      this,
    );
  }
}

abstract class _NovelHomePage implements NovelHomePage {
  factory _NovelHomePage(
      {required final String id,
      required final String label,
      @JsonKey(name: "has_cover") final bool hasCover,
      @JsonKey(name: "init_key") final String initKey,
      final String ext}) = _$NovelHomePageImpl;

  factory _NovelHomePage.fromJson(Map<String, dynamic> json) =
      _$NovelHomePageImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override // 是否有 封面
  @JsonKey(name: "has_cover")
  bool get hasCover;
  @override // 初始页面 key
  @JsonKey(name: "init_key")
  String get initKey;
  @override // 可以让源透传一些信息
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$NovelHomePageImplCopyWith<_$NovelHomePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
