// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeConfigImpl _$$ThemeConfigImplFromJson(Map<String, dynamic> json) =>
    _$ThemeConfigImpl(
      seedColorIndex: (json['seedColorIndex'] as num?)?.toInt() ?? 0,
      darkModeIndex: (json['darkModeIndex'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ThemeConfigImplToJson(_$ThemeConfigImpl instance) =>
    <String, dynamic>{
      'seedColorIndex': instance.seedColorIndex,
      'darkModeIndex': instance.darkModeIndex,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeControllerHash() => r'71790e9333c500550b19f900a07520e9dcfa0b7c';

/// See also [ThemeController].
@ProviderFor(ThemeController)
final themeControllerPod =
    AutoDisposeNotifierProvider<ThemeController, ThemeConfig>.internal(
  ThemeController.new,
  name: r'themeControllerPod',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeController = AutoDisposeNotifier<ThemeConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
