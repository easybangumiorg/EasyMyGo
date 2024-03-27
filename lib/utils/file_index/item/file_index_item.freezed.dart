// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_index_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileIndexItem _$FileIndexItemFromJson(Map<String, dynamic> json) {
  return _FileIndexItem.fromJson(json);
}

/// @nodoc
mixin _$FileIndexItem {
// 文件相对路径 ["a", "b"] => "a/b"
  List<String> get path => throw _privateConstructorUsedError; // 文件大小
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileIndexItemCopyWith<FileIndexItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileIndexItemCopyWith<$Res> {
  factory $FileIndexItemCopyWith(
          FileIndexItem value, $Res Function(FileIndexItem) then) =
      _$FileIndexItemCopyWithImpl<$Res, FileIndexItem>;
  @useResult
  $Res call({List<String> path, int size});
}

/// @nodoc
class _$FileIndexItemCopyWithImpl<$Res, $Val extends FileIndexItem>
    implements $FileIndexItemCopyWith<$Res> {
  _$FileIndexItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileIndexItemImplCopyWith<$Res>
    implements $FileIndexItemCopyWith<$Res> {
  factory _$$FileIndexItemImplCopyWith(
          _$FileIndexItemImpl value, $Res Function(_$FileIndexItemImpl) then) =
      __$$FileIndexItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> path, int size});
}

/// @nodoc
class __$$FileIndexItemImplCopyWithImpl<$Res>
    extends _$FileIndexItemCopyWithImpl<$Res, _$FileIndexItemImpl>
    implements _$$FileIndexItemImplCopyWith<$Res> {
  __$$FileIndexItemImplCopyWithImpl(
      _$FileIndexItemImpl _value, $Res Function(_$FileIndexItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? size = null,
  }) {
    return _then(_$FileIndexItemImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileIndexItemImpl implements _FileIndexItem {
  _$FileIndexItemImpl({required final List<String> path, required this.size})
      : _path = path;

  factory _$FileIndexItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileIndexItemImplFromJson(json);

// 文件相对路径 ["a", "b"] => "a/b"
  final List<String> _path;
// 文件相对路径 ["a", "b"] => "a/b"
  @override
  List<String> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

// 文件大小
  @override
  final int size;

  @override
  String toString() {
    return 'FileIndexItem(path: $path, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileIndexItemImpl &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_path), size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileIndexItemImplCopyWith<_$FileIndexItemImpl> get copyWith =>
      __$$FileIndexItemImplCopyWithImpl<_$FileIndexItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileIndexItemImplToJson(
      this,
    );
  }
}

abstract class _FileIndexItem implements FileIndexItem {
  factory _FileIndexItem(
      {required final List<String> path,
      required final int size}) = _$FileIndexItemImpl;

  factory _FileIndexItem.fromJson(Map<String, dynamic> json) =
      _$FileIndexItemImpl.fromJson;

  @override // 文件相对路径 ["a", "b"] => "a/b"
  List<String> get path;
  @override // 文件大小
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$FileIndexItemImplCopyWith<_$FileIndexItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
