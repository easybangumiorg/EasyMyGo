// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaChapter _$MangaChapterFromJson(Map<String, dynamic> json) {
  return _MangaChapter.fromJson(json);
}

/// @nodoc
mixin _$MangaChapter {
// 章节名称
  String get label => throw _privateConstructorUsedError; // 章节 Id
  String get id => throw _privateConstructorUsedError; // 展示类型
  @JsonKey(name: "show_type")
  ChapterShowType get showType =>
      throw _privateConstructorUsedError; // 最终会传递给阅读器的参数，这里先预埋
  Map<String, String> get parameter =>
      throw _privateConstructorUsedError; // 交给源维护，可以用于透传一些东西
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this MangaChapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaChapterCopyWith<MangaChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaChapterCopyWith<$Res> {
  factory $MangaChapterCopyWith(
          MangaChapter value, $Res Function(MangaChapter) then) =
      _$MangaChapterCopyWithImpl<$Res, MangaChapter>;
  @useResult
  $Res call(
      {String label,
      String id,
      @JsonKey(name: "show_type") ChapterShowType showType,
      Map<String, String> parameter,
      String ext});
}

/// @nodoc
class _$MangaChapterCopyWithImpl<$Res, $Val extends MangaChapter>
    implements $MangaChapterCopyWith<$Res> {
  _$MangaChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? showType = null,
    Object? parameter = null,
    Object? ext = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _value.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as ChapterShowType,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaChapterImplCopyWith<$Res>
    implements $MangaChapterCopyWith<$Res> {
  factory _$$MangaChapterImplCopyWith(
          _$MangaChapterImpl value, $Res Function(_$MangaChapterImpl) then) =
      __$$MangaChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String id,
      @JsonKey(name: "show_type") ChapterShowType showType,
      Map<String, String> parameter,
      String ext});
}

/// @nodoc
class __$$MangaChapterImplCopyWithImpl<$Res>
    extends _$MangaChapterCopyWithImpl<$Res, _$MangaChapterImpl>
    implements _$$MangaChapterImplCopyWith<$Res> {
  __$$MangaChapterImplCopyWithImpl(
      _$MangaChapterImpl _value, $Res Function(_$MangaChapterImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? showType = null,
    Object? parameter = null,
    Object? ext = null,
  }) {
    return _then(_$MangaChapterImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      showType: null == showType
          ? _value.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as ChapterShowType,
      parameter: null == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaChapterImpl implements _MangaChapter {
  _$MangaChapterImpl(
      {required this.label,
      required this.id,
      @JsonKey(name: "show_type") this.showType = ChapterShowType.normal,
      final Map<String, String> parameter = const {},
      this.ext = ''})
      : _parameter = parameter;

  factory _$MangaChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaChapterImplFromJson(json);

// 章节名称
  @override
  final String label;
// 章节 Id
  @override
  final String id;
// 展示类型
  @override
  @JsonKey(name: "show_type")
  final ChapterShowType showType;
// 最终会传递给阅读器的参数，这里先预埋
  final Map<String, String> _parameter;
// 最终会传递给阅读器的参数，这里先预埋
  @override
  @JsonKey()
  Map<String, String> get parameter {
    if (_parameter is EqualUnmodifiableMapView) return _parameter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameter);
  }

// 交给源维护，可以用于透传一些东西
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaChapter(label: $label, id: $id, showType: $showType, parameter: $parameter, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaChapterImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, id, showType,
      const DeepCollectionEquality().hash(_parameter), ext);

  /// Create a copy of MangaChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaChapterImplCopyWith<_$MangaChapterImpl> get copyWith =>
      __$$MangaChapterImplCopyWithImpl<_$MangaChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaChapterImplToJson(
      this,
    );
  }
}

abstract class _MangaChapter implements MangaChapter {
  factory _MangaChapter(
      {required final String label,
      required final String id,
      @JsonKey(name: "show_type") final ChapterShowType showType,
      final Map<String, String> parameter,
      final String ext}) = _$MangaChapterImpl;

  factory _MangaChapter.fromJson(Map<String, dynamic> json) =
      _$MangaChapterImpl.fromJson;

// 章节名称
  @override
  String get label; // 章节 Id
  @override
  String get id; // 展示类型
  @override
  @JsonKey(name: "show_type")
  ChapterShowType get showType; // 最终会传递给阅读器的参数，这里先预埋
  @override
  Map<String, String> get parameter; // 交给源维护，可以用于透传一些东西
  @override
  String get ext;

  /// Create a copy of MangaChapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaChapterImplCopyWith<_$MangaChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
