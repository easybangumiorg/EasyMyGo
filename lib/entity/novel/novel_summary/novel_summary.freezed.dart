// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NovelSummary _$NovelSummaryFromJson(Map<String, dynamic> json) {
  return _NovelSummary.fromJson(json);
}

/// @nodoc
mixin _$NovelSummary {
// 必要信息
  String get source => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError; // 额外字段
  String get ext => throw _privateConstructorUsedError;

  /// Serializes this NovelSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NovelSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NovelSummaryCopyWith<NovelSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelSummaryCopyWith<$Res> {
  factory $NovelSummaryCopyWith(
          NovelSummary value, $Res Function(NovelSummary) then) =
      _$NovelSummaryCopyWithImpl<$Res, NovelSummary>;
  @useResult
  $Res call({String source, String id, String ext});
}

/// @nodoc
class _$NovelSummaryCopyWithImpl<$Res, $Val extends NovelSummary>
    implements $NovelSummaryCopyWith<$Res> {
  _$NovelSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NovelSummary
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
abstract class _$$NovelSummaryImplCopyWith<$Res>
    implements $NovelSummaryCopyWith<$Res> {
  factory _$$NovelSummaryImplCopyWith(
          _$NovelSummaryImpl value, $Res Function(_$NovelSummaryImpl) then) =
      __$$NovelSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String id, String ext});
}

/// @nodoc
class __$$NovelSummaryImplCopyWithImpl<$Res>
    extends _$NovelSummaryCopyWithImpl<$Res, _$NovelSummaryImpl>
    implements _$$NovelSummaryImplCopyWith<$Res> {
  __$$NovelSummaryImplCopyWithImpl(
      _$NovelSummaryImpl _value, $Res Function(_$NovelSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of NovelSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? ext = null,
  }) {
    return _then(_$NovelSummaryImpl(
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
class _$NovelSummaryImpl implements _NovelSummary {
  _$NovelSummaryImpl({required this.source, required this.id, this.ext = ""});

  factory _$NovelSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$NovelSummaryImplFromJson(json);

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
    return 'NovelSummary(source: $source, id: $id, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NovelSummaryImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id, ext);

  /// Create a copy of NovelSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NovelSummaryImplCopyWith<_$NovelSummaryImpl> get copyWith =>
      __$$NovelSummaryImplCopyWithImpl<_$NovelSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NovelSummaryImplToJson(
      this,
    );
  }
}

abstract class _NovelSummary implements NovelSummary {
  factory _NovelSummary(
      {required final String source,
      required final String id,
      final String ext}) = _$NovelSummaryImpl;

  factory _NovelSummary.fromJson(Map<String, dynamic> json) =
      _$NovelSummaryImpl.fromJson;

// 必要信息
  @override
  String get source;
  @override
  String get id; // 额外字段
  @override
  String get ext;

  /// Create a copy of NovelSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NovelSummaryImplCopyWith<_$NovelSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
