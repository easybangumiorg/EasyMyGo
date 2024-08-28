// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookCover _$BookCoverFromJson(Map<String, dynamic> json) {
  return _BookCover.fromJson(json);
}

/// @nodoc
mixin _$BookCover {
  SourceType get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  @JsonKey(name: "jump_url")
  String get jumpUrl => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this BookCover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCoverCopyWith<BookCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCoverCopyWith<$Res> {
  factory $BookCoverCopyWith(BookCover value, $Res Function(BookCover) then) =
      _$BookCoverCopyWithImpl<$Res, BookCover>;
  @useResult
  $Res call(
      {SourceType type,
      String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      String source,
      String ext});
}

/// @nodoc
class _$BookCoverCopyWithImpl<$Res, $Val extends BookCover>
    implements $BookCoverCopyWith<$Res> {
  _$BookCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? source = null,
    Object? ext = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SourceType,
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
abstract class _$$BookCoverImplCopyWith<$Res>
    implements $BookCoverCopyWith<$Res> {
  factory _$$BookCoverImplCopyWith(
          _$BookCoverImpl value, $Res Function(_$BookCoverImpl) then) =
      __$$BookCoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SourceType type,
      String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      String source,
      String ext});
}

/// @nodoc
class __$$BookCoverImplCopyWithImpl<$Res>
    extends _$BookCoverCopyWithImpl<$Res, _$BookCoverImpl>
    implements _$$BookCoverImplCopyWith<$Res> {
  __$$BookCoverImplCopyWithImpl(
      _$BookCoverImpl _value, $Res Function(_$BookCoverImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookCover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? source = null,
    Object? ext = null,
  }) {
    return _then(_$BookCoverImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SourceType,
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
class _$BookCoverImpl implements _BookCover {
  _$BookCoverImpl(
      {required this.type,
      required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      @JsonKey(name: "jump_url") required this.jumpUrl,
      required this.source,
      required this.ext});

  factory _$BookCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookCoverImplFromJson(json);

  @override
  final SourceType type;
  @override
  final String id;
  @override
  final String label;
  @override
  final String cover;
  @override
  final String intro;
  @override
  @JsonKey(name: "jump_url")
  final String jumpUrl;
  @override
  final String source;
  @override
  final String ext;

  @override
  String toString() {
    return 'BookCover(type: $type, id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, source: $source, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookCoverImpl &&
            (identical(other.type, type) || other.type == type) &&
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
  int get hashCode => Object.hash(
      runtimeType, type, id, label, cover, intro, jumpUrl, source, ext);

  /// Create a copy of BookCover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookCoverImplCopyWith<_$BookCoverImpl> get copyWith =>
      __$$BookCoverImplCopyWithImpl<_$BookCoverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookCoverImplToJson(
      this,
    );
  }
}

abstract class _BookCover implements BookCover {
  factory _BookCover(
      {required final SourceType type,
      required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      @JsonKey(name: "jump_url") required final String jumpUrl,
      required final String source,
      required final String ext}) = _$BookCoverImpl;

  factory _BookCover.fromJson(Map<String, dynamic> json) =
      _$BookCoverImpl.fromJson;

  @override
  SourceType get type;
  @override
  String get id;
  @override
  String get label;
  @override
  String get cover;
  @override
  String get intro;
  @override
  @JsonKey(name: "jump_url")
  String get jumpUrl;
  @override
  String get source;
  @override
  String get ext;

  /// Create a copy of BookCover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookCoverImplCopyWith<_$BookCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
