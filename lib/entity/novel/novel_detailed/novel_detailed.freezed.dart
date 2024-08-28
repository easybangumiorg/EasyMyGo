// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_detailed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelDetailed _$NovelDetailedFromJson(Map<String, dynamic> json) {
  return _NovelDetailed.fromJson(json);
}

/// @nodoc
mixin _$NovelDetailed {
// 必要信息
  String get source => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // cover 信息
  String get label => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  @JsonKey(name: "jump_url")
  String get jumpUrl => throw _privateConstructorUsedError; // detailed
  @JsonKey(name: "is_detailed_load")
  bool get isDetailedLoad => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "update_strategy")
  NovelUpdateStrategy get updateStrategy => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  NovelStatus get status => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this NovelDetailed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelDetailed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelDetailedCopyWith<NovelDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelDetailedCopyWith<$Res> {
  factory $NovelDetailedCopyWith(
          NovelDetailed value, $Res Function(NovelDetailed) then) =
      _$NovelDetailedCopyWithImpl<$Res, NovelDetailed>;
  @useResult
  $Res call(
      {String source,
      String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      @JsonKey(name: "is_detailed_load") bool isDetailedLoad,
      String genre,
      String description,
      @JsonKey(name: "update_strategy") NovelUpdateStrategy updateStrategy,
      bool isUpdate,
      NovelStatus status,
      String ext});
}

/// @nodoc
class _$NovelDetailedCopyWithImpl<$Res, $Val extends NovelDetailed>
    implements $NovelDetailedCopyWith<$Res> {
  _$NovelDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelDetailed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? isDetailedLoad = null,
    Object? genre = null,
    Object? description = null,
    Object? updateStrategy = null,
    Object? isUpdate = null,
    Object? status = null,
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
      isDetailedLoad: null == isDetailedLoad
          ? _value.isDetailedLoad
          : isDetailedLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as NovelUpdateStrategy,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NovelStatus,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NovelDetailedImplCopyWith<$Res>
    implements $NovelDetailedCopyWith<$Res> {
  factory _$$NovelDetailedImplCopyWith(
          _$NovelDetailedImpl value, $Res Function(_$NovelDetailedImpl) then) =
      __$$NovelDetailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String source,
      String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      @JsonKey(name: "is_detailed_load") bool isDetailedLoad,
      String genre,
      String description,
      @JsonKey(name: "update_strategy") NovelUpdateStrategy updateStrategy,
      bool isUpdate,
      NovelStatus status,
      String ext});
}

/// @nodoc
class __$$NovelDetailedImplCopyWithImpl<$Res>
    extends _$NovelDetailedCopyWithImpl<$Res, _$NovelDetailedImpl>
    implements _$$NovelDetailedImplCopyWith<$Res> {
  __$$NovelDetailedImplCopyWithImpl(
      _$NovelDetailedImpl _value, $Res Function(_$NovelDetailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelDetailed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? label = null,
    Object? cover = null,
    Object? intro = null,
    Object? jumpUrl = null,
    Object? isDetailedLoad = null,
    Object? genre = null,
    Object? description = null,
    Object? updateStrategy = null,
    Object? isUpdate = null,
    Object? status = null,
    Object? ext = null,
  }) {
    return _then(_$NovelDetailedImpl(
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
      isDetailedLoad: null == isDetailedLoad
          ? _value.isDetailedLoad
          : isDetailedLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      updateStrategy: null == updateStrategy
          ? _value.updateStrategy
          : updateStrategy // ignore: cast_nullable_to_non_nullable
              as NovelUpdateStrategy,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NovelStatus,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NovelDetailedImpl implements _NovelDetailed {
  _$NovelDetailedImpl(
      {required this.source,
      required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      @JsonKey(name: "jump_url") required this.jumpUrl,
      @JsonKey(name: "is_detailed_load") this.isDetailedLoad = false,
      this.genre = "",
      this.description = "",
      @JsonKey(name: "update_strategy")
      this.updateStrategy = NovelUpdateStrategy.always,
      this.isUpdate = false,
      this.status = NovelStatus.unknown,
      this.ext = ""});

  factory _$NovelDetailedImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelDetailedImplFromJson(json);

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
  @JsonKey(name: "jump_url")
  final String jumpUrl;
// detailed
  @override
  @JsonKey(name: "is_detailed_load")
  final bool isDetailedLoad;
  @override
  @JsonKey()
  final String genre;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: "update_strategy")
  final NovelUpdateStrategy updateStrategy;
  @override
  @JsonKey()
  final bool isUpdate;
  @override
  @JsonKey()
  final NovelStatus status;
// 额外字段
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'NovelDetailed(source: $source, id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, isDetailedLoad: $isDetailedLoad, genre: $genre, description: $description, updateStrategy: $updateStrategy, isUpdate: $isUpdate, status: $status, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelDetailedImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.jumpUrl, jumpUrl) || other.jumpUrl == jumpUrl) &&
            (identical(other.isDetailedLoad, isDetailedLoad) ||
                other.isDetailedLoad == isDetailedLoad) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updateStrategy, updateStrategy) ||
                other.updateStrategy == updateStrategy) &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      id,
      label,
      cover,
      intro,
      jumpUrl,
      isDetailedLoad,
      genre,
      description,
      updateStrategy,
      isUpdate,
      status,
      ext);

  /// Create a copy of NovelDetailed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelDetailedImplCopyWith<_$NovelDetailedImpl> get copyWith =>
      __$$NovelDetailedImplCopyWithImpl<_$NovelDetailedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelDetailedImplToJson(
      this,
    );
  }
}

abstract class _NovelDetailed implements NovelDetailed {
  factory _NovelDetailed(
      {required final String source,
      required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      @JsonKey(name: "jump_url") required final String jumpUrl,
      @JsonKey(name: "is_detailed_load") final bool isDetailedLoad,
      final String genre,
      final String description,
      @JsonKey(name: "update_strategy")
      final NovelUpdateStrategy updateStrategy,
      final bool isUpdate,
      final NovelStatus status,
      final String ext}) = _$NovelDetailedImpl;

  factory _NovelDetailed.fromJson(Map<String, dynamic> json) =
      _$NovelDetailedImpl.fromJson;

// 必要信息
  @override
  String get source;
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
  String get jumpUrl; // detailed
  @override
  @JsonKey(name: "is_detailed_load")
  bool get isDetailedLoad;
  @override
  String get genre;
  @override
  String get description;
  @override
  @JsonKey(name: "update_strategy")
  NovelUpdateStrategy get updateStrategy;
  @override
  bool get isUpdate;
  @override
  NovelStatus get status; // 额外字段
  @override
  String get ext;

  /// Create a copy of NovelDetailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelDetailedImplCopyWith<_$NovelDetailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
