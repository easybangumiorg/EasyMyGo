// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExtensionStateImpl _$$ExtensionStateImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionStateImpl(
      loading: json['loading'] as bool? ?? true,
      extensions: (json['extensions'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, ExtensionData.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ExtensionStateImplToJson(
        _$ExtensionStateImpl instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'extensions': instance.extensions,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$extensionControllerHash() =>
    r'89429db4d87220074636aef87e2867eb33feead9';

/// 负责拓展加载，只加载拓展，不加载源
/// 最终源的加载在 SourceController
///
/// Copied from [ExtensionController].
@ProviderFor(ExtensionController)
final extensionControllerPod =
    NotifierProvider<ExtensionController, ExtensionState>.internal(
  ExtensionController.new,
  name: r'extensionControllerPod',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$extensionControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExtensionController = Notifier<ExtensionState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
