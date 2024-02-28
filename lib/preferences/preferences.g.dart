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
    r'21b09334e22d23f93081486bdac6ada2fabbe5e6';

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
