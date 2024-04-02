// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelChapter _$NovelChapterFromJson(Map<String, dynamic> json) {
  return _NovelChapter.fromJson(json);
}

/// @nodoc
mixin _$NovelChapter {
// 章节标题
  String get label => throw _privateConstructorUsedError; // 章节 id
  String get id => throw _privateConstructorUsedError; // 根据加载方式不同有不同含义
  String get src => throw _privateConstructorUsedError; // 加载方式
  @JsonKey(name: "load_from")
  NovelChapterLoadFrom get loadFrom =>
      throw _privateConstructorUsedError; // 加载类型
  @JsonKey(name: "load_type")
  NovelChapterLoadType get loadType =>
      throw _privateConstructorUsedError; // 最终会传递给阅读器的参数，这里先预埋
  Map<String, String> get parameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelChapterCopyWith<NovelChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelChapterCopyWith<$Res> {
  factory $NovelChapterCopyWith(
          NovelChapter value, $Res Function(NovelChapter) then) =
      _$NovelChapterCopyWithImpl<$Res, NovelChapter>;
  @useResult
  $Res call(
      {String label,
      String id,
      String src,
      @JsonKey(name: "load_from") NovelChapterLoadFrom loadFrom,
      @JsonKey(name: "load_type") NovelChapterLoadType loadType,
      Map<String, String> parameter});
}

/// @nodoc
class _$NovelChapterCopyWithImpl<$Res, $Val extends NovelChapter>
    implements $NovelChapterCopyWith<$Res> {
  _$NovelChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? src = null,
    Object? loadFrom = null,
    Object? loadType = null,
    Object? parameter = null,
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
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      loadFrom: null == loadFrom
          ? _value.loadFrom
          : loadFrom // ignore: cast_nullable_to_non_nullable
              as NovelChapterLoadFrom,
      loadType: null == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as NovelChapterLoadType,
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NovelChapterImplCopyWith<$Res>
    implements $NovelChapterCopyWith<$Res> {
  factory _$$NovelChapterImplCopyWith(
          _$NovelChapterImpl value, $Res Function(_$NovelChapterImpl) then) =
      __$$NovelChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String id,
      String src,
      @JsonKey(name: "load_from") NovelChapterLoadFrom loadFrom,
      @JsonKey(name: "load_type") NovelChapterLoadType loadType,
      Map<String, String> parameter});
}

/// @nodoc
class __$$NovelChapterImplCopyWithImpl<$Res>
    extends _$NovelChapterCopyWithImpl<$Res, _$NovelChapterImpl>
    implements _$$NovelChapterImplCopyWith<$Res> {
  __$$NovelChapterImplCopyWithImpl(
      _$NovelChapterImpl _value, $Res Function(_$NovelChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? src = null,
    Object? loadFrom = null,
    Object? loadType = null,
    Object? parameter = null,
  }) {
    return _then(_$NovelChapterImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      loadFrom: null == loadFrom
          ? _value.loadFrom
          : loadFrom // ignore: cast_nullable_to_non_nullable
              as NovelChapterLoadFrom,
      loadType: null == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as NovelChapterLoadType,
      parameter: null == parameter
          ? _value._parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelChapterImpl implements _NovelChapter {
  _$NovelChapterImpl(
      {required this.label,
      required this.id,
      required this.src,
      @JsonKey(name: "load_from") this.loadFrom = NovelChapterLoadFrom.direct,
      @JsonKey(name: "load_type") this.loadType = NovelChapterLoadType.html,
      final Map<String, String> parameter = const {}})
      : _parameter = parameter;

  factory _$NovelChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelChapterImplFromJson(json);

// 章节标题
  @override
  final String label;
// 章节 id
  @override
  final String id;
// 根据加载方式不同有不同含义
  @override
  final String src;
// 加载方式
  @override
  @JsonKey(name: "load_from")
  final NovelChapterLoadFrom loadFrom;
// 加载类型
  @override
  @JsonKey(name: "load_type")
  final NovelChapterLoadType loadType;
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

  @override
  String toString() {
    return 'NovelChapter(label: $label, id: $id, src: $src, loadFrom: $loadFrom, loadType: $loadType, parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelChapterImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.loadFrom, loadFrom) ||
                other.loadFrom == loadFrom) &&
            (identical(other.loadType, loadType) ||
                other.loadType == loadType) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, id, src, loadFrom,
      loadType, const DeepCollectionEquality().hash(_parameter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelChapterImplCopyWith<_$NovelChapterImpl> get copyWith =>
      __$$NovelChapterImplCopyWithImpl<_$NovelChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelChapterImplToJson(
      this,
    );
  }
}

abstract class _NovelChapter implements NovelChapter {
  factory _NovelChapter(
      {required final String label,
      required final String id,
      required final String src,
      @JsonKey(name: "load_from") final NovelChapterLoadFrom loadFrom,
      @JsonKey(name: "load_type") final NovelChapterLoadType loadType,
      final Map<String, String> parameter}) = _$NovelChapterImpl;

  factory _NovelChapter.fromJson(Map<String, dynamic> json) =
      _$NovelChapterImpl.fromJson;

  @override // 章节标题
  String get label;
  @override // 章节 id
  String get id;
  @override // 根据加载方式不同有不同含义
  String get src;
  @override // 加载方式
  @JsonKey(name: "load_from")
  NovelChapterLoadFrom get loadFrom;
  @override // 加载类型
  @JsonKey(name: "load_type")
  NovelChapterLoadType get loadType;
  @override // 最终会传递给阅读器的参数，这里先预埋
  Map<String, String> get parameter;
  @override
  @JsonKey(ignore: true)
  _$$NovelChapterImplCopyWith<_$NovelChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
