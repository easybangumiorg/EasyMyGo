// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaSummary _$MangaSummaryFromJson(Map<String, dynamic> json) {
  return _MangaSummary.fromJson(json);
}

/// @nodoc
mixin _$MangaSummary {
// 必要信息
  String get source => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this MangaSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaSummaryCopyWith<MangaSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaSummaryCopyWith<$Res> {
  factory $MangaSummaryCopyWith(
          MangaSummary value, $Res Function(MangaSummary) then) =
      _$MangaSummaryCopyWithImpl<$Res, MangaSummary>;
  @useResult
  $Res call({String source, String id, String ext});
}

/// @nodoc
class _$MangaSummaryCopyWithImpl<$Res, $Val extends MangaSummary>
    implements $MangaSummaryCopyWith<$Res> {
  _$MangaSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
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
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaSummaryImplCopyWith<$Res>
    implements $MangaSummaryCopyWith<$Res> {
  factory _$$MangaSummaryImplCopyWith(
          _$MangaSummaryImpl value, $Res Function(_$MangaSummaryImpl) then) =
      __$$MangaSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String id, String ext});
}

/// @nodoc
class __$$MangaSummaryImplCopyWithImpl<$Res>
    extends _$MangaSummaryCopyWithImpl<$Res, _$MangaSummaryImpl>
    implements _$$MangaSummaryImplCopyWith<$Res> {
  __$$MangaSummaryImplCopyWithImpl(
      _$MangaSummaryImpl _value, $Res Function(_$MangaSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? ext = null,
  }) {
    return _then(_$MangaSummaryImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$MangaSummaryImpl implements _MangaSummary {
  _$MangaSummaryImpl({required this.source, required this.id, this.ext = ""});

  factory _$MangaSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaSummaryImplFromJson(json);

// 必要信息
  @override
  final String source;
  @override
  final String id;
// 额外字段
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaSummary(source: $source, id: $id, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaSummaryImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id, ext);

  /// Create a copy of MangaSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaSummaryImplCopyWith<_$MangaSummaryImpl> get copyWith =>
      __$$MangaSummaryImplCopyWithImpl<_$MangaSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaSummaryImplToJson(
      this,
    );
  }
}

abstract class _MangaSummary implements MangaSummary {
  factory _MangaSummary(
      {required final String source,
      required final String id,
      final String ext}) = _$MangaSummaryImpl;

  factory _MangaSummary.fromJson(Map<String, dynamic> json) =
      _$MangaSummaryImpl.fromJson;

// 必要信息
  @override
  String get source;
  @override
  String get id; // 额外字段
  @override
  String get ext;

  /// Create a copy of MangaSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaSummaryImplCopyWith<_$MangaSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
