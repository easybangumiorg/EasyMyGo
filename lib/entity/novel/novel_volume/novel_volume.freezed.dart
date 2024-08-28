// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_volume.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelVolume _$NovelVolumeFromJson(Map<String, dynamic> json) {
  return _NovelVolume.fromJson(json);
}

/// @nodoc
mixin _$NovelVolume {
// 卷名称
  String get label => throw _privateConstructorUsedError; // 卷 id
  String get id => throw _privateConstructorUsedError; // 组织形式
  @JsonKey(name: "organize_type")
  dynamic get organizeType =>
      throw _privateConstructorUsedError; // 最终会传递给阅读器的参数，这里先预埋
  Map<String, String> get parameter =>
      throw _privateConstructorUsedError; // 交给源维护，可以用于透传一些东西
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this NovelVolume to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelVolume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelVolumeCopyWith<NovelVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelVolumeCopyWith<$Res> {
  factory $NovelVolumeCopyWith(
          NovelVolume value, $Res Function(NovelVolume) then) =
      _$NovelVolumeCopyWithImpl<$Res, NovelVolume>;
  @useResult
  $Res call(
      {String label,
      String id,
      @JsonKey(name: "organize_type") dynamic organizeType,
      Map<String, String> parameter,
      String ext});
}

/// @nodoc
class _$NovelVolumeCopyWithImpl<$Res, $Val extends NovelVolume>
    implements $NovelVolumeCopyWith<$Res> {
  _$NovelVolumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelVolume
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? organizeType = freezed,
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
      organizeType: freezed == organizeType
          ? _value.organizeType
          : organizeType // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$NovelVolumeImplCopyWith<$Res>
    implements $NovelVolumeCopyWith<$Res> {
  factory _$$NovelVolumeImplCopyWith(
          _$NovelVolumeImpl value, $Res Function(_$NovelVolumeImpl) then) =
      __$$NovelVolumeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String id,
      @JsonKey(name: "organize_type") dynamic organizeType,
      Map<String, String> parameter,
      String ext});
}

/// @nodoc
class __$$NovelVolumeImplCopyWithImpl<$Res>
    extends _$NovelVolumeCopyWithImpl<$Res, _$NovelVolumeImpl>
    implements _$$NovelVolumeImplCopyWith<$Res> {
  __$$NovelVolumeImplCopyWithImpl(
      _$NovelVolumeImpl _value, $Res Function(_$NovelVolumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelVolume
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? id = null,
    Object? organizeType = freezed,
    Object? parameter = null,
    Object? ext = null,
  }) {
    return _then(_$NovelVolumeImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      organizeType:
          freezed == organizeType ? _value.organizeType! : organizeType,
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
class _$NovelVolumeImpl implements _NovelVolume {
  _$NovelVolumeImpl(
      {required this.label,
      required this.id,
      @JsonKey(name: "organize_type")
      this.organizeType = NovelVolumeOrganizeType.multiChapter,
      final Map<String, String> parameter = const {},
      this.ext = ''})
      : _parameter = parameter;

  factory _$NovelVolumeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelVolumeImplFromJson(json);

// 卷名称
  @override
  final String label;
// 卷 id
  @override
  final String id;
// 组织形式
  @override
  @JsonKey(name: "organize_type")
  final dynamic organizeType;
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
    return 'NovelVolume(label: $label, id: $id, organizeType: $organizeType, parameter: $parameter, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelVolumeImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.organizeType, organizeType) &&
            const DeepCollectionEquality()
                .equals(other._parameter, _parameter) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      id,
      const DeepCollectionEquality().hash(organizeType),
      const DeepCollectionEquality().hash(_parameter),
      ext);

  /// Create a copy of NovelVolume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelVolumeImplCopyWith<_$NovelVolumeImpl> get copyWith =>
      __$$NovelVolumeImplCopyWithImpl<_$NovelVolumeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelVolumeImplToJson(
      this,
    );
  }
}

abstract class _NovelVolume implements NovelVolume {
  factory _NovelVolume(
      {required final String label,
      required final String id,
      @JsonKey(name: "organize_type") final dynamic organizeType,
      final Map<String, String> parameter,
      final String ext}) = _$NovelVolumeImpl;

  factory _NovelVolume.fromJson(Map<String, dynamic> json) =
      _$NovelVolumeImpl.fromJson;

// 卷名称
  @override
  String get label; // 卷 id
  @override
  String get id; // 组织形式
  @override
  @JsonKey(name: "organize_type")
  dynamic get organizeType; // 最终会传递给阅读器的参数，这里先预埋
  @override
  Map<String, String> get parameter; // 交给源维护，可以用于透传一些东西
  @override
  String get ext;

  /// Create a copy of NovelVolume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelVolumeImplCopyWith<_$NovelVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
