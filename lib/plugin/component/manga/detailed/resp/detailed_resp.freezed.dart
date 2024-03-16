// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedResp _$DetailedRespFromJson(Map<String, dynamic> json) {
  return _DetailedResp.fromJson(json);
}

/// @nodoc
mixin _$DetailedResp {
  MangaDetailed get detailed => throw _privateConstructorUsedError;
  @JsonKey(name: "detailed_code")
  int get detailedCode => throw _privateConstructorUsedError;
  @JsonKey(name: "detailed_msg")
  String get detailedMsg => throw _privateConstructorUsedError;
  List<MangaChapter> get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters_code")
  int get chaptersCode => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters_msg")
  String get chaptersMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedRespCopyWith<DetailedResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedRespCopyWith<$Res> {
  factory $DetailedRespCopyWith(
          DetailedResp value, $Res Function(DetailedResp) then) =
      _$DetailedRespCopyWithImpl<$Res, DetailedResp>;
  @useResult
  $Res call(
      {MangaDetailed detailed,
      @JsonKey(name: "detailed_code") int detailedCode,
      @JsonKey(name: "detailed_msg") String detailedMsg,
      List<MangaChapter> chapters,
      @JsonKey(name: "chapters_code") int chaptersCode,
      @JsonKey(name: "chapters_msg") String chaptersMsg});

  $MangaDetailedCopyWith<$Res> get detailed;
}

/// @nodoc
class _$DetailedRespCopyWithImpl<$Res, $Val extends DetailedResp>
    implements $DetailedRespCopyWith<$Res> {
  _$DetailedRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = null,
    Object? detailedCode = null,
    Object? detailedMsg = null,
    Object? chapters = null,
    Object? chaptersCode = null,
    Object? chaptersMsg = null,
  }) {
    return _then(_value.copyWith(
      detailed: null == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as MangaDetailed,
      detailedCode: null == detailedCode
          ? _value.detailedCode
          : detailedCode // ignore: cast_nullable_to_non_nullable
              as int,
      detailedMsg: null == detailedMsg
          ? _value.detailedMsg
          : detailedMsg // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>,
      chaptersCode: null == chaptersCode
          ? _value.chaptersCode
          : chaptersCode // ignore: cast_nullable_to_non_nullable
              as int,
      chaptersMsg: null == chaptersMsg
          ? _value.chaptersMsg
          : chaptersMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MangaDetailedCopyWith<$Res> get detailed {
    return $MangaDetailedCopyWith<$Res>(_value.detailed, (value) {
      return _then(_value.copyWith(detailed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedRespImplCopyWith<$Res>
    implements $DetailedRespCopyWith<$Res> {
  factory _$$DetailedRespImplCopyWith(
          _$DetailedRespImpl value, $Res Function(_$DetailedRespImpl) then) =
      __$$DetailedRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MangaDetailed detailed,
      @JsonKey(name: "detailed_code") int detailedCode,
      @JsonKey(name: "detailed_msg") String detailedMsg,
      List<MangaChapter> chapters,
      @JsonKey(name: "chapters_code") int chaptersCode,
      @JsonKey(name: "chapters_msg") String chaptersMsg});

  @override
  $MangaDetailedCopyWith<$Res> get detailed;
}

/// @nodoc
class __$$DetailedRespImplCopyWithImpl<$Res>
    extends _$DetailedRespCopyWithImpl<$Res, _$DetailedRespImpl>
    implements _$$DetailedRespImplCopyWith<$Res> {
  __$$DetailedRespImplCopyWithImpl(
      _$DetailedRespImpl _value, $Res Function(_$DetailedRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailed = null,
    Object? detailedCode = null,
    Object? detailedMsg = null,
    Object? chapters = null,
    Object? chaptersCode = null,
    Object? chaptersMsg = null,
  }) {
    return _then(_$DetailedRespImpl(
      detailed: null == detailed
          ? _value.detailed
          : detailed // ignore: cast_nullable_to_non_nullable
              as MangaDetailed,
      detailedCode: null == detailedCode
          ? _value.detailedCode
          : detailedCode // ignore: cast_nullable_to_non_nullable
              as int,
      detailedMsg: null == detailedMsg
          ? _value.detailedMsg
          : detailedMsg // ignore: cast_nullable_to_non_nullable
              as String,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<MangaChapter>,
      chaptersCode: null == chaptersCode
          ? _value.chaptersCode
          : chaptersCode // ignore: cast_nullable_to_non_nullable
              as int,
      chaptersMsg: null == chaptersMsg
          ? _value.chaptersMsg
          : chaptersMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedRespImpl implements _DetailedResp {
  _$DetailedRespImpl(
      {required this.detailed,
      @JsonKey(name: "detailed_code") this.detailedCode = 0,
      @JsonKey(name: "detailed_msg") this.detailedMsg = "",
      required final List<MangaChapter> chapters,
      @JsonKey(name: "chapters_code") this.chaptersCode = 0,
      @JsonKey(name: "chapters_msg") this.chaptersMsg = ""})
      : _chapters = chapters;

  factory _$DetailedRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedRespImplFromJson(json);

  @override
  final MangaDetailed detailed;
  @override
  @JsonKey(name: "detailed_code")
  final int detailedCode;
  @override
  @JsonKey(name: "detailed_msg")
  final String detailedMsg;
  final List<MangaChapter> _chapters;
  @override
  List<MangaChapter> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  @JsonKey(name: "chapters_code")
  final int chaptersCode;
  @override
  @JsonKey(name: "chapters_msg")
  final String chaptersMsg;

  @override
  String toString() {
    return 'DetailedResp(detailed: $detailed, detailedCode: $detailedCode, detailedMsg: $detailedMsg, chapters: $chapters, chaptersCode: $chaptersCode, chaptersMsg: $chaptersMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedRespImpl &&
            (identical(other.detailed, detailed) ||
                other.detailed == detailed) &&
            (identical(other.detailedCode, detailedCode) ||
                other.detailedCode == detailedCode) &&
            (identical(other.detailedMsg, detailedMsg) ||
                other.detailedMsg == detailedMsg) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.chaptersCode, chaptersCode) ||
                other.chaptersCode == chaptersCode) &&
            (identical(other.chaptersMsg, chaptersMsg) ||
                other.chaptersMsg == chaptersMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      detailed,
      detailedCode,
      detailedMsg,
      const DeepCollectionEquality().hash(_chapters),
      chaptersCode,
      chaptersMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedRespImplCopyWith<_$DetailedRespImpl> get copyWith =>
      __$$DetailedRespImplCopyWithImpl<_$DetailedRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedRespImplToJson(
      this,
    );
  }
}

abstract class _DetailedResp implements DetailedResp {
  factory _DetailedResp(
          {required final MangaDetailed detailed,
          @JsonKey(name: "detailed_code") final int detailedCode,
          @JsonKey(name: "detailed_msg") final String detailedMsg,
          required final List<MangaChapter> chapters,
          @JsonKey(name: "chapters_code") final int chaptersCode,
          @JsonKey(name: "chapters_msg") final String chaptersMsg}) =
      _$DetailedRespImpl;

  factory _DetailedResp.fromJson(Map<String, dynamic> json) =
      _$DetailedRespImpl.fromJson;

  @override
  MangaDetailed get detailed;
  @override
  @JsonKey(name: "detailed_code")
  int get detailedCode;
  @override
  @JsonKey(name: "detailed_msg")
  String get detailedMsg;
  @override
  List<MangaChapter> get chapters;
  @override
  @JsonKey(name: "chapters_code")
  int get chaptersCode;
  @override
  @JsonKey(name: "chapters_msg")
  String get chaptersMsg;
  @override
  @JsonKey(ignore: true)
  _$$DetailedRespImplCopyWith<_$DetailedRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
