// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_config_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceConfigItem _$SourceConfigItemFromJson(Map<String, dynamic> json) {
  return _SourceConfigItem.fromJson(json);
}

/// @nodoc
mixin _$SourceConfigItem {
  String get key => throw _privateConstructorUsedError;
  String get package => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this SourceConfigItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceConfigItemCopyWith<SourceConfigItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceConfigItemCopyWith<$Res> {
  factory $SourceConfigItemCopyWith(
          SourceConfigItem value, $Res Function(SourceConfigItem) then) =
      _$SourceConfigItemCopyWithImpl<$Res, SourceConfigItem>;
  @useResult
  $Res call({String key, String package, bool enabled, int order});
}

/// @nodoc
class _$SourceConfigItemCopyWithImpl<$Res, $Val extends SourceConfigItem>
    implements $SourceConfigItemCopyWith<$Res> {
  _$SourceConfigItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? package = null,
    Object? enabled = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceConfigItemImplCopyWith<$Res>
    implements $SourceConfigItemCopyWith<$Res> {
  factory _$$SourceConfigItemImplCopyWith(_$SourceConfigItemImpl value,
          $Res Function(_$SourceConfigItemImpl) then) =
      __$$SourceConfigItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String package, bool enabled, int order});
}

/// @nodoc
class __$$SourceConfigItemImplCopyWithImpl<$Res>
    extends _$SourceConfigItemCopyWithImpl<$Res, _$SourceConfigItemImpl>
    implements _$$SourceConfigItemImplCopyWith<$Res> {
  __$$SourceConfigItemImplCopyWithImpl(_$SourceConfigItemImpl _value,
      $Res Function(_$SourceConfigItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? package = null,
    Object? enabled = null,
    Object? order = null,
  }) {
    return _then(_$SourceConfigItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceConfigItemImpl implements _SourceConfigItem {
  _$SourceConfigItemImpl(
      {required this.key,
      required this.package,
      this.enabled = true,
      this.order = 999});

  factory _$SourceConfigItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceConfigItemImplFromJson(json);

  @override
  final String key;
  @override
  final String package;
  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'SourceConfigItem(key: $key, package: $package, enabled: $enabled, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceConfigItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, package, enabled, order);

  /// Create a copy of SourceConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceConfigItemImplCopyWith<_$SourceConfigItemImpl> get copyWith =>
      __$$SourceConfigItemImplCopyWithImpl<_$SourceConfigItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceConfigItemImplToJson(
      this,
    );
  }
}

abstract class _SourceConfigItem implements SourceConfigItem {
  factory _SourceConfigItem(
      {required final String key,
      required final String package,
      final bool enabled,
      final int order}) = _$SourceConfigItemImpl;

  factory _SourceConfigItem.fromJson(Map<String, dynamic> json) =
      _$SourceConfigItemImpl.fromJson;

  @override
  String get key;
  @override
  String get package;
  @override
  bool get enabled;
  @override
  int get order;

  /// Create a copy of SourceConfigItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceConfigItemImplCopyWith<_$SourceConfigItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
