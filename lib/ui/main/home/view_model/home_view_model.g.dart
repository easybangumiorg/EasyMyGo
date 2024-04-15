// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeViewStateImpl _$$HomeViewStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeViewStateImpl(
      loading: json['loading'] as bool? ?? true,
      isError: json['is_error'] as bool? ?? false,
      errorMsg: json['error_msg'] as String? ?? "",
      sourceIdentifyMap:
          (json['source_identify_map'] as Map<String, dynamic>?)?.map(
                (k, e) =>
                    MapEntry($enumDecode(_$SourceTypeEnumMap, k), e as String),
              ) ??
              const {},
      currentType:
          $enumDecodeNullable(_$SourceTypeEnumMap, json['current_type']) ??
              SourceType.manga,
      currentSourceIdentify: json['current_source_identify'] as String? ?? "",
      bookTabList: (json['home_tab_list'] as List<dynamic>?)
              ?.map((e) => BookHomeTab.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentHomeTab: json['current_home_tab'] == null
          ? null
          : BookHomeTab.fromJson(
              json['current_home_tab'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewStateImplToJson(_$HomeViewStateImpl instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'is_error': instance.isError,
      'error_msg': instance.errorMsg,
      'source_identify_map': instance.sourceIdentifyMap
          .map((k, e) => MapEntry(_$SourceTypeEnumMap[k]!, e)),
      'current_type': _$SourceTypeEnumMap[instance.currentType]!,
      'current_source_identify': instance.currentSourceIdentify,
      'home_tab_list': instance.bookTabList,
      'current_home_tab': instance.currentHomeTab,
    };

const _$SourceTypeEnumMap = {
  SourceType.manga: 'manga',
  SourceType.novel: 'novel',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeViewModelHash() => r'efb5773b5ee8c15b7b90c838451512f460be2829';

/// See also [HomeViewModel].
@ProviderFor(HomeViewModel)
final homeViewModelPod =
    AutoDisposeNotifierProvider<HomeViewModel, HomeViewState>.internal(
  HomeViewModel.new,
  name: r'homeViewModelPod',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeViewModel = AutoDisposeNotifier<HomeViewState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
