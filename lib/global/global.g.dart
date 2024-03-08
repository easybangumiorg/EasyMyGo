// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionInfoImpl _$$VersionInfoImplFromJson(Map<String, dynamic> json) =>
    _$VersionInfoImpl(
      versionName: json['versionName'] as String,
      versionCode: json['versionCode'] as int,
    );

Map<String, dynamic> _$$VersionInfoImplToJson(_$VersionInfoImpl instance) =>
    <String, dynamic>{
      'versionName': instance.versionName,
      'versionCode': instance.versionCode,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$globalHash() => r'001de0bad9c51616e4d1f3e3e9aa0f8ab15df393';

/// See also [Global].
@ProviderFor(Global)
final globalProvider = NotifierProvider<Global, GlobalState?>.internal(
  Global.new,
  name: r'globalProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$globalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Global = Notifier<GlobalState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
