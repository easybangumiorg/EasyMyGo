// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExtensionData _$ExtensionDataFromJson(Map<String, dynamic> json) {
  return _ExtensionData.fromJson(json);
}

/// @nodoc
mixin _$ExtensionData {
  ExtensionInfo get info => throw _privateConstructorUsedError;
  List<SourceInfo>? get sources => throw _privateConstructorUsedError;
  ExtensionLoadState get state => throw _privateConstructorUsedError;
  @JsonKey(name: "error_msg")
  String get errorMsg => throw _privateConstructorUsedError; // 该插件的文件夹
  @JsonKey(name: "folder_path")
  String get folderPath => throw _privateConstructorUsedError;

  /// Serializes this ExtensionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtensionDataCopyWith<ExtensionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionDataCopyWith<$Res> {
  factory $ExtensionDataCopyWith(
          ExtensionData value, $Res Function(ExtensionData) then) =
      _$ExtensionDataCopyWithImpl<$Res, ExtensionData>;
  @useResult
  $Res call(
      {ExtensionInfo info,
      List<SourceInfo>? sources,
      ExtensionLoadState state,
      @JsonKey(name: "error_msg") String errorMsg,
      @JsonKey(name: "folder_path") String folderPath});

  $ExtensionInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$ExtensionDataCopyWithImpl<$Res, $Val extends ExtensionData>
    implements $ExtensionDataCopyWith<$Res> {
  _$ExtensionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? sources = freezed,
    Object? state = null,
    Object? errorMsg = null,
    Object? folderPath = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ExtensionInfo,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceInfo>?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ExtensionLoadState,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      folderPath: null == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtensionInfoCopyWith<$Res> get info {
    return $ExtensionInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExtensionDataImplCopyWith<$Res>
    implements $ExtensionDataCopyWith<$Res> {
  factory _$$ExtensionDataImplCopyWith(
          _$ExtensionDataImpl value, $Res Function(_$ExtensionDataImpl) then) =
      __$$ExtensionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ExtensionInfo info,
      List<SourceInfo>? sources,
      ExtensionLoadState state,
      @JsonKey(name: "error_msg") String errorMsg,
      @JsonKey(name: "folder_path") String folderPath});

  @override
  $ExtensionInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$ExtensionDataImplCopyWithImpl<$Res>
    extends _$ExtensionDataCopyWithImpl<$Res, _$ExtensionDataImpl>
    implements _$$ExtensionDataImplCopyWith<$Res> {
  __$$ExtensionDataImplCopyWithImpl(
      _$ExtensionDataImpl _value, $Res Function(_$ExtensionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? sources = freezed,
    Object? state = null,
    Object? errorMsg = null,
    Object? folderPath = null,
  }) {
    return _then(_$ExtensionDataImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ExtensionInfo,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceInfo>?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ExtensionLoadState,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      folderPath: null == folderPath
          ? _value.folderPath
          : folderPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtensionDataImpl implements _ExtensionData {
  _$ExtensionDataImpl(
      {required this.info,
      final List<SourceInfo>? sources = null,
      this.state = ExtensionLoadState.loaded,
      @JsonKey(name: "error_msg") this.errorMsg = "",
      @JsonKey(name: "folder_path") required this.folderPath})
      : _sources = sources;

  factory _$ExtensionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtensionDataImplFromJson(json);

  @override
  final ExtensionInfo info;
  final List<SourceInfo>? _sources;
  @override
  @JsonKey()
  List<SourceInfo>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final ExtensionLoadState state;
  @override
  @JsonKey(name: "error_msg")
  final String errorMsg;
// 该插件的文件夹
  @override
  @JsonKey(name: "folder_path")
  final String folderPath;

  @override
  String toString() {
    return 'ExtensionData(info: $info, sources: $sources, state: $state, errorMsg: $errorMsg, folderPath: $folderPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtensionDataImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.folderPath, folderPath) ||
                other.folderPath == folderPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_sources),
      state,
      errorMsg,
      folderPath);

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtensionDataImplCopyWith<_$ExtensionDataImpl> get copyWith =>
      __$$ExtensionDataImplCopyWithImpl<_$ExtensionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtensionDataImplToJson(
      this,
    );
  }
}

abstract class _ExtensionData implements ExtensionData {
  factory _ExtensionData(
          {required final ExtensionInfo info,
          final List<SourceInfo>? sources,
          final ExtensionLoadState state,
          @JsonKey(name: "error_msg") final String errorMsg,
          @JsonKey(name: "folder_path") required final String folderPath}) =
      _$ExtensionDataImpl;

  factory _ExtensionData.fromJson(Map<String, dynamic> json) =
      _$ExtensionDataImpl.fromJson;

  @override
  ExtensionInfo get info;
  @override
  List<SourceInfo>? get sources;
  @override
  ExtensionLoadState get state;
  @override
  @JsonKey(name: "error_msg")
  String get errorMsg; // 该插件的文件夹
  @override
  @JsonKey(name: "folder_path")
  String get folderPath;

  /// Create a copy of ExtensionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtensionDataImplCopyWith<_$ExtensionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
