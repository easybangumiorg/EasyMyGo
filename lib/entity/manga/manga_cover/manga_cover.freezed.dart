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
  String get id => throw _privateConstructorUsedError; // cover 信息
  String get label => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  @JsonKey(name: "jump_url")
  String get jumpUrl =>
      throw _privateConstructorUsedError; // 必要信息，但是由 Component 填充
  String get source => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this MangaCover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      String source,
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

  /// Create a copy of MangaCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? source = null,
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      String source,
      String ext});
}

/// @nodoc
class __$$MangaCoverImplCopyWithImpl<$Res>
    extends _$MangaCoverCopyWithImpl<$Res, _$MangaCoverImpl>
    implements _$$MangaCoverImplCopyWith<$Res> {
  __$$MangaCoverImplCopyWithImpl(
      _$MangaCoverImpl _value, $Res Function(_$MangaCoverImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? source = null,
    Object? ext = null,
  }) {
    return _then(_$MangaCoverImpl(
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
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
      {required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      @JsonKey(name: "jump_url") required this.jumpUrl,
      this.source = "",
      this.ext = ""});

  factory _$MangaCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaCoverImplFromJson(json);

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
  @JsonKey(name: "jump_url")
  final String jumpUrl;
// 必要信息，但是由 Component 填充
  @override
  @JsonKey()
  final String source;
// 额外字段
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaCover(id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, source: $source, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaCoverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.jumpUrl, jumpUrl) || other.jumpUrl == jumpUrl) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, cover, intro, jumpUrl, source, ext);

  /// Create a copy of MangaCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      @JsonKey(name: "jump_url") required final String jumpUrl,
      final String source,
      final String ext}) = _$MangaCoverImpl;

  factory _MangaCover.fromJson(Map<String, dynamic> json) =
      _$MangaCoverImpl.fromJson;

  @override
  String get id; // cover 信息
  @override
  String get label;
  @override
  String get cover;
  @override
  String get intro;
  @override
  @JsonKey(name: "jump_url")
  String get jumpUrl; // 必要信息，但是由 Component 填充
  @override
  String get source; // 额外字段
  @override
  String get ext;

  /// Create a copy of MangaCover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaCoverImplCopyWith<_$MangaCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
