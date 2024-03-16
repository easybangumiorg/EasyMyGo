// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaCover _$MangaCoverFromJson(Map<String, dynamic> json) {
  return _MangaCover.fromJson(json);
}

/// @nodoc
mixin _$MangaCover {
// 必要信息
  String get source => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // cover 信息
  String get label => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get jumpUrl => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaCoverCopyWith<MangaCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaCoverCopyWith<$Res> {
  factory $MangaCoverCopyWith(
          MangaCover value, $Res Function(MangaCover) then) =
      _$MangaCoverCopyWithImpl<$Res, MangaCover>;
  @useResult
  $Res call(
      {String source,
      String id,
      String label,
      String cover,
      String intro,
      String jumpUrl,
      String ext});
}

/// @nodoc
class _$MangaCoverCopyWithImpl<$Res, $Val extends MangaCover>
    implements $MangaCoverCopyWith<$Res> {
  _$MangaCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? ext = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      jumpUrl: null == jumpUrl
          ? _value.jumpUrl
          : jumpUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaCoverImplCopyWith<$Res>
    implements $MangaCoverCopyWith<$Res> {
  factory _$$MangaCoverImplCopyWith(
          _$MangaCoverImpl value, $Res Function(_$MangaCoverImpl) then) =
      __$$MangaCoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String source,
      String id,
      String label,
      String cover,
      String intro,
      String jumpUrl,
      String ext});
}

/// @nodoc
class __$$MangaCoverImplCopyWithImpl<$Res>
    extends _$MangaCoverCopyWithImpl<$Res, _$MangaCoverImpl>
    implements _$$MangaCoverImplCopyWith<$Res> {
  __$$MangaCoverImplCopyWithImpl(
      _$MangaCoverImpl _value, $Res Function(_$MangaCoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? ext = null,
  }) {
    return _then(_$MangaCoverImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      jumpUrl: null == jumpUrl
          ? _value.jumpUrl
          : jumpUrl // ignore: cast_nullable_to_non_nullable
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
class _$MangaCoverImpl implements _MangaCover {
  _$MangaCoverImpl(
      {required this.source,
      required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      required this.jumpUrl,
      this.ext = ""});

  factory _$MangaCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaCoverImplFromJson(json);

// 必要信息
  @override
  final String source;
  @override
  final String id;
// cover 信息
  @override
  final String label;
  @override
  final String cover;
  @override
  final String intro;
  @override
  final String jumpUrl;
// 额外字段
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaCover(source: $source, id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaCoverImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.jumpUrl, jumpUrl) || other.jumpUrl == jumpUrl) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, id, label, cover, intro, jumpUrl, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaCoverImplCopyWith<_$MangaCoverImpl> get copyWith =>
      __$$MangaCoverImplCopyWithImpl<_$MangaCoverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaCoverImplToJson(
      this,
    );
  }
}

abstract class _MangaCover implements MangaCover {
  factory _MangaCover(
      {required final String source,
      required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      required final String jumpUrl,
      final String ext}) = _$MangaCoverImpl;

  factory _MangaCover.fromJson(Map<String, dynamic> json) =
      _$MangaCoverImpl.fromJson;

  @override // 必要信息
  String get source;
  @override
  String get id;
  @override // cover 信息
  String get label;
  @override
  String get cover;
  @override
  String get intro;
  @override
  String get jumpUrl;
  @override // 额外字段
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$MangaCoverImplCopyWith<_$MangaCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
