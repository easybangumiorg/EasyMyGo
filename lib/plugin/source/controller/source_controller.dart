import 'dart:collection';

import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/source/config_controller/source_config_controller.dart';
import 'package:easy_mygo/plugin/source/load_controller/source_load_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/manga_detailed_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/manga_home_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/manga_read_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/manga_search_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/detailed/novel_detailed_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/read/novel_read_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/search/novel_search_component.dart';

part 'source_controller.g.dart';

/// 获取源业务
/// SourceBundle.of(WidgetRef ref)
/// SourceConfigWrapper.of(WidgetRef ref)
///
/// SourceLoadState         ↘
/// List<SourceConfigItem>  → List<SourceConfigWrapper> → SourceBundle

/// 源数据 x 配置
class SourceConfigWrapper {
  static List<SourceConfigWrapper> of(dynamic ref) =>
      ref.watch(sourceConfigWrapperPod);

  final SourceConfigItem config;
  final SourceData source;

  SourceConfigWrapper(this.config, this.source);

  SourceConfigWrapper copyWith({
    SourceConfigItem? config,
    SourceData? source,
  }) {
    return SourceConfigWrapper(
      config ?? this.config,
      source ?? this.source,
    );
  }
}

@Riverpod()
List<SourceConfigWrapper> sourceConfigWrapper(SourceConfigWrapperRef ref) {
  final sourceState = ref.watch(sourceLoadControllerPod);
  final sourceConfig = ref.watch(sourceConfigControllerPod);
  if (sourceState.loading || sourceState.loading) {
    return [];
  }
  final configMap = HashMap<String, SourceConfigItem>();
  for (var value in sourceConfig) {
    configMap[value.identify] = value;
  }

  return sourceState.sourceList
      .map((e) => SourceConfigWrapper(
          configMap[e.info.identify] ??
              SourceConfigItem(key: e.info.key, package: e.info.fromPackage),
          e))
      .toList(growable: false);
}

@Riverpod()
SourceBundle sourceBundle(SourceBundleRef ref) {
  final sourceConfigWrapper = ref.watch(sourceConfigWrapperPod);
  return SourceBundle(sourceConfigWrapper);
}

class SourceBundle {
  static SourceBundle of(dynamic ref) => ref.watch(sourceBundlePod);

  final LinkedHashMap<String, SourceConfigWrapper> sourceMap = LinkedHashMap();

  final LinkedHashMap<String, MangaHomeComponent> mangaHomeMap =
      LinkedHashMap();
  final LinkedHashMap<String, MangaReadComponent> mangaReadMap =
      LinkedHashMap();
  final LinkedHashMap<String, MangaSearchComponent> mangaSearchMap =
      LinkedHashMap();
  final LinkedHashMap<String, MangaDetailedComponent> mangaDetailedMap =
      LinkedHashMap();

  final LinkedHashMap<String, NovelHomeComponent> novelHomeMap =
      LinkedHashMap();
  final LinkedHashMap<String, NovelReadComponent> novelReadMap =
      LinkedHashMap();
  final LinkedHashMap<String, NovelSearchComponent> novelSearchMap =
      LinkedHashMap();
  final LinkedHashMap<String, NovelDetailedComponent> novelDetailedMap =
      LinkedHashMap();

  SourceBundle(List<SourceConfigWrapper> sourceList) {
    sourceList.sort((a, b) => a.config.order.compareTo(b.config.order));
    for (final source in sourceList) {
      if (source.source.state != SourceState.loaded) {
        continue;
      }
      sourceMap[source.source.info.identify] = source;
      final List<Component> components = source.source.components ?? [];
      for (final component in components) {
        if (component is MangaHomeComponent) {
          mangaHomeMap[source.source.info.identify] = component;
        }
        if (component is MangaReadComponent) {
          mangaReadMap[source.source.info.identify] = component;
        }
        if (component is MangaSearchComponent) {
          mangaSearchMap[source.source.info.identify] = component;
        }
        if (component is MangaDetailedComponent) {
          mangaDetailedMap[source.source.info.identify] = component;
        }
        if (component is NovelHomeComponent) {
          novelHomeMap[source.source.info.identify] = component;
        }
        if (component is NovelReadComponent) {
          novelReadMap[source.source.info.identify] = component;
        }
        if (component is NovelSearchComponent) {
          novelSearchMap[source.source.info.identify] = component;
        }
        if (component is NovelDetailedComponent) {
          novelDetailedMap[source.source.info.identify] = component;
        }
      }
    }
  }

  SourceConfigWrapper? getSourceConfigWrapper(String identify) {
    return sourceMap[identify];
  }

  MangaHomeComponent? getMangaHomeComponent(String identify) {
    return mangaHomeMap[identify];
  }

  MangaReadComponent? getMangaReadComponent(String identify) {
    return mangaReadMap[identify];
  }

  MangaSearchComponent? getMangaSearchComponent(String identify) {
    return mangaSearchMap[identify];
  }

  MangaDetailedComponent? getMangaDetailedComponent(String identify) {
    return mangaDetailedMap[identify];
  }

  NovelHomeComponent? getNovelHomeComponent(String identify) {
    return novelHomeMap[identify];
  }

  NovelReadComponent? getNovelReadComponent(String identify) {
    return novelReadMap[identify];
  }

  NovelSearchComponent? getNovelSearchComponent(String identify) {
    return novelSearchMap[identify];
  }

  NovelDetailedComponent? getNovelDetailedComponent(String identify) {
    return novelDetailedMap[identify];
  }

  List<SourceConfigWrapper> getSourceConfigWrapperList() {
    return sourceMap.values.toList();
  }

  List<MangaHomeComponent> getMangaHomeList() {
    return mangaHomeMap.values.toList();
  }

  List<MangaSearchComponent> getMangaSearchList() {
    return mangaSearchMap.values.toList();
  }

  List<NovelHomeComponent> getNovelHomeList() {
    return novelHomeMap.values.toList();
  }

  List<NovelSearchComponent> getNovelSearchList() {
    return novelSearchMap.values.toList();
  }
}
