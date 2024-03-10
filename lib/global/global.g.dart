// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalStateImpl _$$GlobalStateImplFromJson(Map<String, dynamic> json) =>
    _$GlobalStateImpl(
      isInitialing: json['isInitialing'] as bool,
      migratingProcess: json['migratingProcess'] as int,
      isReady: json['isReady'] as bool,
    );

Map<String, dynamic> _$$GlobalStateImplToJson(_$GlobalStateImpl instance) =>
    <String, dynamic>{
      'isInitialing': instance.isInitialing,
      'migratingProcess': instance.migratingProcess,
      'isReady': instance.isReady,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$globalHash() => r'1103990379482f35f6fdcda3418af38fe0320a56';

/// See also [Global].
@ProviderFor(Global)
final globalPod = NotifierProvider<Global, GlobalState>.internal(
  Global.new,
  name: r'globalPod',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$globalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Global = Notifier<GlobalState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
