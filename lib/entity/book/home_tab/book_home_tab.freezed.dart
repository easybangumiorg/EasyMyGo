// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_home_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookHomeTab _$BookHomeTabFromJson(Map<String, dynamic> json) {
  return _BookHomeTab.fromJson(json);
}

/// @nodoc
mixin _$BookHomeTab {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError; // 是否有 二级 tab
  @JsonKey(name: "has_second_tab")
  bool get hasSecondTab => throw _privateConstructorUsedError; // 可以让源透传一些信息
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookHomeTabCopyWith<BookHomeTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookHomeTabCopyWith<$Res> {
  factory $BookHomeTabCopyWith(
          BookHomeTab value, $Res Function(BookHomeTab) then) =
      _$BookHomeTabCopyWithImpl<$Res, BookHomeTab>;
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_second_tab") bool hasSecondTab,
      String ext});
}

/// @nodoc
class _$BookHomeTabCopyWithImpl<$Res, $Val extends BookHomeTab>
    implements $BookHomeTabCopyWith<$Res> {
  _$BookHomeTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? hasSecondTab = null,
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
      hasSecondTab: null == hasSecondTab
          ? _value.hasSecondTab
          : hasSecondTab // ignore: cast_nullable_to_non_nullable
              as bool,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookHomeTabImplCopyWith<$Res>
    implements $BookHomeTabCopyWith<$Res> {
  factory _$$BookHomeTabImplCopyWith(
          _$BookHomeTabImpl value, $Res Function(_$BookHomeTabImpl) then) =
      __$$BookHomeTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_second_tab") bool hasSecondTab,
      String ext});
}

/// @nodoc
class __$$BookHomeTabImplCopyWithImpl<$Res>
    extends _$BookHomeTabCopyWithImpl<$Res, _$BookHomeTabImpl>
    implements _$$BookHomeTabImplCopyWith<$Res> {
  __$$BookHomeTabImplCopyWithImpl(
      _$BookHomeTabImpl _value, $Res Function(_$BookHomeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? hasSecondTab = null,
    Object? ext = null,
  }) {
    return _then(_$BookHomeTabImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      hasSecondTab: null == hasSecondTab
          ? _value.hasSecondTab
          : hasSecondTab // ignore: cast_nullable_to_non_nullable
              as bool,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookHomeTabImpl implements _BookHomeTab {
  _$BookHomeTabImpl(
      {required this.id,
      required this.label,
      @JsonKey(name: "has_second_tab") required this.hasSecondTab,
      this.ext = ''});

  factory _$BookHomeTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookHomeTabImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
// 是否有 二级 tab
  @override
  @JsonKey(name: "has_second_tab")
  final bool hasSecondTab;
// 可以让源透传一些信息
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'BookHomeTab(id: $id, label: $label, hasSecondTab: $hasSecondTab, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookHomeTabImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hasSecondTab, hasSecondTab) ||
                other.hasSecondTab == hasSecondTab) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, hasSecondTab, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookHomeTabImplCopyWith<_$BookHomeTabImpl> get copyWith =>
      __$$BookHomeTabImplCopyWithImpl<_$BookHomeTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookHomeTabImplToJson(
      this,
    );
  }
}

abstract class _BookHomeTab implements BookHomeTab {
  factory _BookHomeTab(
      {required final String id,
      required final String label,
      @JsonKey(name: "has_second_tab") required final bool hasSecondTab,
      final String ext}) = _$BookHomeTabImpl;

  factory _BookHomeTab.fromJson(Map<String, dynamic> json) =
      _$BookHomeTabImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override // 是否有 二级 tab
  @JsonKey(name: "has_second_tab")
  bool get hasSecondTab;
  @override // 可以让源透传一些信息
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$BookHomeTabImplCopyWith<_$BookHomeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookSecondTab _$BookSecondTabFromJson(Map<String, dynamic> json) {
  return _BookSecondTab.fromJson(json);
}

/// @nodoc
mixin _$BookSecondTab {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError; // 可以让源透传一些信息
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookSecondTabCopyWith<BookSecondTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSecondTabCopyWith<$Res> {
  factory $BookSecondTabCopyWith(
          BookSecondTab value, $Res Function(BookSecondTab) then) =
      _$BookSecondTabCopyWithImpl<$Res, BookSecondTab>;
  @useResult
  $Res call({String id, String label, String ext});
}

/// @nodoc
class _$BookSecondTabCopyWithImpl<$Res, $Val extends BookSecondTab>
    implements $BookSecondTabCopyWith<$Res> {
  _$BookSecondTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
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
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookSecondTabImplCopyWith<$Res>
    implements $BookSecondTabCopyWith<$Res> {
  factory _$$BookSecondTabImplCopyWith(
          _$BookSecondTabImpl value, $Res Function(_$BookSecondTabImpl) then) =
      __$$BookSecondTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String ext});
}

/// @nodoc
class __$$BookSecondTabImplCopyWithImpl<$Res>
    extends _$BookSecondTabCopyWithImpl<$Res, _$BookSecondTabImpl>
    implements _$$BookSecondTabImplCopyWith<$Res> {
  __$$BookSecondTabImplCopyWithImpl(
      _$BookSecondTabImpl _value, $Res Function(_$BookSecondTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? ext = null,
  }) {
    return _then(_$BookSecondTabImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
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
class _$BookSecondTabImpl implements _BookSecondTab {
  _$BookSecondTabImpl({required this.id, required this.label, this.ext = ''});

  factory _$BookSecondTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookSecondTabImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
// 可以让源透传一些信息
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'BookSecondTab(id: $id, label: $label, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookSecondTabImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookSecondTabImplCopyWith<_$BookSecondTabImpl> get copyWith =>
      __$$BookSecondTabImplCopyWithImpl<_$BookSecondTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookSecondTabImplToJson(
      this,
    );
  }
}

abstract class _BookSecondTab implements BookSecondTab {
  factory _BookSecondTab(
      {required final String id,
      required final String label,
      final String ext}) = _$BookSecondTabImpl;

  factory _BookSecondTab.fromJson(Map<String, dynamic> json) =
      _$BookSecondTabImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override // 可以让源透传一些信息
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$BookSecondTabImplCopyWith<_$BookSecondTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
