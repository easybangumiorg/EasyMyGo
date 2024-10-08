// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_detailed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaDetailed _$MangaDetailedFromJson(Map<String, dynamic> json) {
  return _MangaDetailed.fromJson(json);
}

/// @nodoc
mixin _$MangaDetailed {
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
  MangaUpdateStrategy get updateStrategy => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  MangaStatus get status => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError; // 必要信息，但是由 Component 填充
  String get source => throw _privateConstructorUsedError;

  /// Serializes this MangaDetailed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaDetailed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaDetailedCopyWith<MangaDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaDetailedCopyWith<$Res> {
  factory $MangaDetailedCopyWith(
          MangaDetailed value, $Res Function(MangaDetailed) then) =
      _$MangaDetailedCopyWithImpl<$Res, MangaDetailed>;
  @useResult
  $Res call(
      {String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      @JsonKey(name: "is_detailed_load") bool isDetailedLoad,
      String genre,
      String description,
      @JsonKey(name: "update_strategy") MangaUpdateStrategy updateStrategy,
      bool isUpdate,
      MangaStatus status,
      String ext,
      String source});
}

/// @nodoc
class _$MangaDetailedCopyWithImpl<$Res, $Val extends MangaDetailed>
    implements $MangaDetailedCopyWith<$Res> {
  _$MangaDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaDetailed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? source = null,
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
              as MangaUpdateStrategy,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaDetailedImplCopyWith<$Res>
    implements $MangaDetailedCopyWith<$Res> {
  factory _$$MangaDetailedImplCopyWith(
          _$MangaDetailedImpl value, $Res Function(_$MangaDetailedImpl) then) =
      __$$MangaDetailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      String cover,
      String intro,
      @JsonKey(name: "jump_url") String jumpUrl,
      @JsonKey(name: "is_detailed_load") bool isDetailedLoad,
      String genre,
      String description,
      @JsonKey(name: "update_strategy") MangaUpdateStrategy updateStrategy,
      bool isUpdate,
      MangaStatus status,
      String ext,
      String source});
}

/// @nodoc
class __$$MangaDetailedImplCopyWithImpl<$Res>
    extends _$MangaDetailedCopyWithImpl<$Res, _$MangaDetailedImpl>
    implements _$$MangaDetailedImplCopyWith<$Res> {
  __$$MangaDetailedImplCopyWithImpl(
      _$MangaDetailedImpl _value, $Res Function(_$MangaDetailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaDetailed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? source = null,
  }) {
    return _then(_$MangaDetailedImpl(
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
              as MangaUpdateStrategy,
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MangaStatus,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaDetailedImpl implements _MangaDetailed {
  _$MangaDetailedImpl(
      {required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      @JsonKey(name: "jump_url") required this.jumpUrl,
      @JsonKey(name: "is_detailed_load") this.isDetailedLoad = false,
      this.genre = "",
      this.description = "",
      @JsonKey(name: "update_strategy")
      this.updateStrategy = MangaUpdateStrategy.always,
      this.isUpdate = false,
      this.status = MangaStatus.unknown,
      this.ext = "",
      this.source = ""});

  factory _$MangaDetailedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaDetailedImplFromJson(json);

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
  final MangaUpdateStrategy updateStrategy;
  @override
  @JsonKey()
  final bool isUpdate;
  @override
  @JsonKey()
  final MangaStatus status;
// 额外字段
  @override
  @JsonKey()
  final String ext;
// 必要信息，但是由 Component 填充
  @override
  @JsonKey()
  final String source;

  @override
  String toString() {
    return 'MangaDetailed(id: $id, label: $label, cover: $cover, intro: $intro, jumpUrl: $jumpUrl, isDetailedLoad: $isDetailedLoad, genre: $genre, description: $description, updateStrategy: $updateStrategy, isUpdate: $isUpdate, status: $status, ext: $ext, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaDetailedImpl &&
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
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      ext,
      source);

  /// Create a copy of MangaDetailed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaDetailedImplCopyWith<_$MangaDetailedImpl> get copyWith =>
      __$$MangaDetailedImplCopyWithImpl<_$MangaDetailedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaDetailedImplToJson(
      this,
    );
  }
}

abstract class _MangaDetailed implements MangaDetailed {
  factory _MangaDetailed(
      {required final String id,
      required final String label,
      required final String cover,
      required final String intro,
      @JsonKey(name: "jump_url") required final String jumpUrl,
      @JsonKey(name: "is_detailed_load") final bool isDetailedLoad,
      final String genre,
      final String description,
      @JsonKey(name: "update_strategy")
      final MangaUpdateStrategy updateStrategy,
      final bool isUpdate,
      final MangaStatus status,
      final String ext,
      final String source}) = _$MangaDetailedImpl;

  factory _MangaDetailed.fromJson(Map<String, dynamic> json) =
      _$MangaDetailedImpl.fromJson;

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
  MangaUpdateStrategy get updateStrategy;
  @override
  bool get isUpdate;
  @override
  MangaStatus get status; // 额外字段
  @override
  String get ext; // 必要信息，但是由 Component 填充
  @override
  String get source;

  /// Create a copy of MangaDetailed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaDetailedImplCopyWith<_$MangaDetailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
