// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeConfigImpl _$$ThemeConfigImplFromJson(Map<String, dynamic> json) =>
    _$ThemeConfigImpl(
      seedColorIndex: json['seedColorIndex'] as int? ?? 0,
      darkModeIndex: json['darkModeIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$ThemeConfigImplToJson(_$ThemeConfigImpl instance) =>
    <String, dynamic>{
      'seedColorIndex': instance.seedColorIndex,
      'darkModeIndex': instance.darkModeIndex,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeNotifierHash() => r'101509b58d4fef9f62adb1a84a5040fd8d212c7b';

/// See also [ThemeNotifier].
@ProviderFor(ThemeNotifier)
final themeNotifierPod =
    AutoDisposeNotifierProvider<ThemeNotifier, ThemeConfig>.internal(
  ThemeNotifier.new,
  name: r'themeNotifierPod',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeNotifier = AutoDisposeNotifier<ThemeConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
