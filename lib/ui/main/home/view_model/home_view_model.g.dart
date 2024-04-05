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
      mangaSourceList: (json['manga_source_list'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      mangaTabList: (json['manga_tab_list'] as List<dynamic>?)
              ?.map((e) => MangaHomeTab.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      novelSourceList: (json['novel_source_list'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      novelTabList: (json['novel_tab_list'] as List<dynamic>?)
              ?.map((e) => NovelHomeTab.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentType:
          $enumDecodeNullable(_$SourceTypeEnumMap, json['current_type']) ??
              SourceType.manga,
      currentSourceIndex: json['current_source_index'] as int? ?? 0,
    );

Map<String, dynamic> _$$HomeViewStateImplToJson(_$HomeViewStateImpl instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'is_error': instance.isError,
      'error_msg': instance.errorMsg,
      'manga_source_list': instance.mangaSourceList,
      'manga_tab_list': instance.mangaTabList,
      'novel_source_list': instance.novelSourceList,
      'novel_tab_list': instance.novelTabList,
      'current_type': _$SourceTypeEnumMap[instance.currentType]!,
      'current_source_index': instance.currentSourceIndex,
    };

const _$SourceTypeEnumMap = {
  SourceType.manga: 'manga',
  SourceType.novel: 'novel',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeViewModelHash() => r'a398cf06ff4ca8e776229f0776e6b5998af51aeb';

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
