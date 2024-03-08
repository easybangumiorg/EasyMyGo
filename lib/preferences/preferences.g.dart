// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferenceStateImpl _$$PreferenceStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferenceStateImpl(
      themeIndex: json['themeIndex'] as int,
      darkMode: json['darkMode'] as int,
    );

Map<String, dynamic> _$$PreferenceStateImplToJson(
        _$PreferenceStateImpl instance) =>
    <String, dynamic>{
      'themeIndex': instance.themeIndex,
      'darkMode': instance.darkMode,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$preferencesControllerHash() =>
    r'94f99fcad44ad0fbcea1710c40a7ef38f5cfecbe';

/// See also [PreferencesController].
@ProviderFor(PreferencesController)
final preferencesControllerProvider = AutoDisposeNotifierProvider<
    PreferencesController, PreferenceState>.internal(
  PreferencesController.new,
  name: r'preferencesControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$preferencesControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PreferencesController = AutoDisposeNotifier<PreferenceState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
