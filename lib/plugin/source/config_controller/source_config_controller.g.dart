// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_config_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceConfigItemImpl _$$SourceConfigItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SourceConfigItemImpl(
      key: json['key'] as String,
      package: json['package'] as String,
      enabled: json['enabled'] as bool? ?? true,
      order: (json['order'] as num?)?.toInt() ?? 999,
    );

Map<String, dynamic> _$$SourceConfigItemImplToJson(
        _$SourceConfigItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'package': instance.package,
      'enabled': instance.enabled,
      'order': instance.order,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sourceConfigControllerHash() =>
    r'b59f7f384d6c9535b8c14f9980f243143edaccdb';

/// See also [SourceConfigController].
@ProviderFor(SourceConfigController)
final sourceConfigControllerPod = AutoDisposeNotifierProvider<
    SourceConfigController, List<SourceConfigItem>>.internal(
  SourceConfigController.new,
  name: r'sourceConfigControllerPod',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sourceConfigControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SourceConfigController = AutoDisposeNotifier<List<SourceConfigItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
