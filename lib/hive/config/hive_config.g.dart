// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hiveConfigHash() => r'4b04138ae08b85be5f5104dfff7203e324a45d0f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HiveConfig
    extends BuildlessAutoDisposeStreamNotifier<Map<String, Object?>> {
  late final String key;

  Stream<Map<String, Object?>> build(
    String key,
  );
}

/// See also [HiveConfig].
@ProviderFor(HiveConfig)
const hiveConfigPod = HiveConfigFamily();

/// See also [HiveConfig].
class HiveConfigFamily extends Family<AsyncValue<Map<String, Object?>>> {
  /// See also [HiveConfig].
  const HiveConfigFamily();

  /// See also [HiveConfig].
  HiveConfigProvider call(
    String key,
  ) {
    return HiveConfigProvider(
      key,
    );
  }

  @override
  HiveConfigProvider getProviderOverride(
    covariant HiveConfigProvider provider,
  ) {
    return call(
      provider.key,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hiveConfigPod';
}

/// See also [HiveConfig].
class HiveConfigProvider extends AutoDisposeStreamNotifierProviderImpl<
    HiveConfig, Map<String, Object?>> {
  /// See also [HiveConfig].
  HiveConfigProvider(
    String key,
  ) : this._internal(
          () => HiveConfig()..key = key,
          from: hiveConfigPod,
          name: r'hiveConfigPod',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hiveConfigHash,
          dependencies: HiveConfigFamily._dependencies,
          allTransitiveDependencies:
              HiveConfigFamily._allTransitiveDependencies,
          key: key,
        );

  HiveConfigProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Stream<Map<String, Object?>> runNotifierBuild(
    covariant HiveConfig notifier,
  ) {
    return notifier.build(
      key,
    );
  }

  @override
  Override overrideWith(HiveConfig Function() create) {
    return ProviderOverride(
      origin: this,
      override: HiveConfigProvider._internal(
        () => create()..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<HiveConfig, Map<String, Object?>>
      createElement() {
    return _HiveConfigProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HiveConfigProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HiveConfigRef
    on AutoDisposeStreamNotifierProviderRef<Map<String, Object?>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _HiveConfigProviderElement
    extends AutoDisposeStreamNotifierProviderElement<HiveConfig,
        Map<String, Object?>> with HiveConfigRef {
  _HiveConfigProviderElement(super.provider);

  @override
  String get key => (origin as HiveConfigProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
