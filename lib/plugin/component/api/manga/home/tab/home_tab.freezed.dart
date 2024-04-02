// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaHomeTab _$MangaHomeTabFromJson(Map<String, dynamic> json) {
  return _MangaHomeTab.fromJson(json);
}

/// @nodoc
mixin _$MangaHomeTab {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError; // 是否有 二级 tab
  @JsonKey(name: "has_second_tab")
  bool get hasSecondTab => throw _privateConstructorUsedError; // 是否需要跳转到新页面
  @JsonKey(name: "jump_page")
  bool get jumpPage => throw _privateConstructorUsedError; // 可以让源透传一些信息
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaHomeTabCopyWith<MangaHomeTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaHomeTabCopyWith<$Res> {
  factory $MangaHomeTabCopyWith(
          MangaHomeTab value, $Res Function(MangaHomeTab) then) =
      _$MangaHomeTabCopyWithImpl<$Res, MangaHomeTab>;
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_second_tab") bool hasSecondTab,
      @JsonKey(name: "jump_page") bool jumpPage,
      String ext});
}

/// @nodoc
class _$MangaHomeTabCopyWithImpl<$Res, $Val extends MangaHomeTab>
    implements $MangaHomeTabCopyWith<$Res> {
  _$MangaHomeTabCopyWithImpl(this._value, this._then);

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
    Object? jumpPage = null,
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
      jumpPage: null == jumpPage
          ? _value.jumpPage
          : jumpPage // ignore: cast_nullable_to_non_nullable
              as bool,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaHomeTabImplCopyWith<$Res>
    implements $MangaHomeTabCopyWith<$Res> {
  factory _$$MangaHomeTabImplCopyWith(
          _$MangaHomeTabImpl value, $Res Function(_$MangaHomeTabImpl) then) =
      __$$MangaHomeTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(name: "has_second_tab") bool hasSecondTab,
      @JsonKey(name: "jump_page") bool jumpPage,
      String ext});
}

/// @nodoc
class __$$MangaHomeTabImplCopyWithImpl<$Res>
    extends _$MangaHomeTabCopyWithImpl<$Res, _$MangaHomeTabImpl>
    implements _$$MangaHomeTabImplCopyWith<$Res> {
  __$$MangaHomeTabImplCopyWithImpl(
      _$MangaHomeTabImpl _value, $Res Function(_$MangaHomeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? hasSecondTab = null,
    Object? jumpPage = null,
    Object? ext = null,
  }) {
    return _then(_$MangaHomeTabImpl(
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
      jumpPage: null == jumpPage
          ? _value.jumpPage
          : jumpPage // ignore: cast_nullable_to_non_nullable
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
class _$MangaHomeTabImpl implements _MangaHomeTab {
  _$MangaHomeTabImpl(
      {required this.id,
      required this.label,
      @JsonKey(name: "has_second_tab") required this.hasSecondTab,
      @JsonKey(name: "jump_page") this.jumpPage = false,
      this.ext = ''});

  factory _$MangaHomeTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaHomeTabImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
// 是否有 二级 tab
  @override
  @JsonKey(name: "has_second_tab")
  final bool hasSecondTab;
// 是否需要跳转到新页面
  @override
  @JsonKey(name: "jump_page")
  final bool jumpPage;
// 可以让源透传一些信息
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaHomeTab(id: $id, label: $label, hasSecondTab: $hasSecondTab, jumpPage: $jumpPage, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaHomeTabImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hasSecondTab, hasSecondTab) ||
                other.hasSecondTab == hasSecondTab) &&
            (identical(other.jumpPage, jumpPage) ||
                other.jumpPage == jumpPage) &&
            (identical(other.ext, ext) || other.ext == ext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, hasSecondTab, jumpPage, ext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaHomeTabImplCopyWith<_$MangaHomeTabImpl> get copyWith =>
      __$$MangaHomeTabImplCopyWithImpl<_$MangaHomeTabImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaHomeTabImplToJson(
      this,
    );
  }
}

abstract class _MangaHomeTab implements MangaHomeTab {
  factory _MangaHomeTab(
      {required final String id,
      required final String label,
      @JsonKey(name: "has_second_tab") required final bool hasSecondTab,
      @JsonKey(name: "jump_page") final bool jumpPage,
      final String ext}) = _$MangaHomeTabImpl;

  factory _MangaHomeTab.fromJson(Map<String, dynamic> json) =
      _$MangaHomeTabImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override // 是否有 二级 tab
  @JsonKey(name: "has_second_tab")
  bool get hasSecondTab;
  @override // 是否需要跳转到新页面
  @JsonKey(name: "jump_page")
  bool get jumpPage;
  @override // 可以让源透传一些信息
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$MangaHomeTabImplCopyWith<_$MangaHomeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MangaHomeSecondTab _$MangaHomeSecondTabFromJson(Map<String, dynamic> json) {
  return _MangaHomeSecondTab.fromJson(json);
}

/// @nodoc
mixin _$MangaHomeSecondTab {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get ext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaHomeSecondTabCopyWith<MangaHomeSecondTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaHomeSecondTabCopyWith<$Res> {
  factory $MangaHomeSecondTabCopyWith(
          MangaHomeSecondTab value, $Res Function(MangaHomeSecondTab) then) =
      _$MangaHomeSecondTabCopyWithImpl<$Res, MangaHomeSecondTab>;
  @useResult
  $Res call({String id, String label, String ext});
}

/// @nodoc
class _$MangaHomeSecondTabCopyWithImpl<$Res, $Val extends MangaHomeSecondTab>
    implements $MangaHomeSecondTabCopyWith<$Res> {
  _$MangaHomeSecondTabCopyWithImpl(this._value, this._then);

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
abstract class _$$MangaHomeSecondTabImplCopyWith<$Res>
    implements $MangaHomeSecondTabCopyWith<$Res> {
  factory _$$MangaHomeSecondTabImplCopyWith(_$MangaHomeSecondTabImpl value,
          $Res Function(_$MangaHomeSecondTabImpl) then) =
      __$$MangaHomeSecondTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, String ext});
}

/// @nodoc
class __$$MangaHomeSecondTabImplCopyWithImpl<$Res>
    extends _$MangaHomeSecondTabCopyWithImpl<$Res, _$MangaHomeSecondTabImpl>
    implements _$$MangaHomeSecondTabImplCopyWith<$Res> {
  __$$MangaHomeSecondTabImplCopyWithImpl(_$MangaHomeSecondTabImpl _value,
      $Res Function(_$MangaHomeSecondTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? ext = null,
  }) {
    return _then(_$MangaHomeSecondTabImpl(
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
class _$MangaHomeSecondTabImpl implements _MangaHomeSecondTab {
  _$MangaHomeSecondTabImpl(
      {required this.id, required this.label, this.ext = ''});

  factory _$MangaHomeSecondTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaHomeSecondTabImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  @JsonKey()
  final String ext;

  @override
  String toString() {
    return 'MangaHomeSecondTab(id: $id, label: $label, ext: $ext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaHomeSecondTabImpl &&
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
  _$$MangaHomeSecondTabImplCopyWith<_$MangaHomeSecondTabImpl> get copyWith =>
      __$$MangaHomeSecondTabImplCopyWithImpl<_$MangaHomeSecondTabImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaHomeSecondTabImplToJson(
      this,
    );
  }
}

abstract class _MangaHomeSecondTab implements MangaHomeSecondTab {
  factory _MangaHomeSecondTab(
      {required final String id,
      required final String label,
      final String ext}) = _$MangaHomeSecondTabImpl;

  factory _MangaHomeSecondTab.fromJson(Map<String, dynamic> json) =
      _$MangaHomeSecondTabImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get ext;
  @override
  @JsonKey(ignore: true)
  _$$MangaHomeSecondTabImplCopyWith<_$MangaHomeSecondTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
