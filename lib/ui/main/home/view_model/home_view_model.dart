

import 'dart:convert';

import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/utils/cancelable_task/cancelable_task.dart';
import 'package:easy_mygo/utils/hive/hive.dart';
import 'package:easy_mygo/utils/json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';
part 'home_view_model.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {

  static final none = HomeViewState();

  factory HomeViewState({
    @Default(true) bool loading,
    @Default(false) @JsonKey(name: "is_error") bool isError,
    @Default("") @JsonKey(name: "error_msg") String errorMsg,

    // 所有漫画首页源和一级 tab
    @Default([]) @JsonKey(name: "manga_source_list") List<String> mangaSourceList,
    @Default([]) @JsonKey(name: "manga_tab_list") List<MangaHomeTab> mangaTabList,

    // 所有小说首页源和一级 tab
    @Default([]) @JsonKey(name: "novel_source_list") List<String> novelSourceList,
    @Default([]) @JsonKey(name: "novel_tab_list") List<NovelHomeTab> novelTabList,

    // 当前选择类型，只有对应类型的一级 tab 有值
    @Default(SourceType.manga) @JsonKey(name: "current_type") SourceType currentType,

    // 当前选择一级 tab 下标
    @Default(0) @JsonKey(name: "current_source_index") int currentSourceIndex,

  }) = _HomeViewState;

  factory HomeViewState.fromJson(Map<String, dynamic> json) =>
      _$HomeViewStateFromJson(json);
}

@Riverpod()
class HomeViewModel extends _$HomeViewModel with CancelableWorkerContainer<SourceBundle> {

  static HomeViewModel of(dynamic ref) =>
      ref.watch(homeViewModelPod.notifier);

  static HomeViewState watch(dynamic ref) =>
      ref.watch(homeViewModelPod);

  static const configCurrentSourceType = "home_current_source_type";
  static const configCurrentSourceKey = "home_current_source_key";

  @override
  HomeViewState build(){
    ref.listen(sourceBundlePod, (previous, next) {
      performWork(next);
    });
    return HomeViewState.none;
  }

  @override
  Future<void> onWork(CancelableTask task, SourceBundle input) async {

    task.checkCancel();
    final isFirst = state == HomeViewState.none;
    state = state.copyWith(
      loading: true
    );

    final mangaHomeList = input.getMangaHomeList();
    final novelHomeList = input.getNovelHomeList();

    if (mangaHomeList.isEmpty && novelHomeList.isEmpty){
      state = state.copyWith(
        loading: false,
        isError: false,

        mangaTabList: [],
        mangaSourceList: [],
        novelTabList: [],
        novelSourceList: [],
      );
      return;
    }

    final mangaSourceList = mangaHomeList.map((e) => e.sourceInfo.identify).toList();
    final novelSourceList = novelHomeList.map((e) => e.sourceInfo.identify).toList();

    SourceType currentType = state.currentType;
    String currentIdentify = "";
    int currentSourceIndex = state.currentSourceIndex;
    final box = await HiveBox.config();
    final configMap = await box.getSingle() ?? <dynamic, dynamic>{};
    if (isFirst){
      currentType = SourceType.values.elementAtOrNull(int.tryParse(configMap[configCurrentSourceType]??"0")??0) ?? currentType;
      currentIdentify = configMap[configCurrentSourceKey]??"";
    }

    final list = currentType == SourceType.manga? mangaSourceList : novelSourceList;
    if(currentIdentify.isNotEmpty){
      currentSourceIndex = list.indexOf(currentIdentify);
    }
    if(currentSourceIndex < 0 || currentSourceIndex >= list.length){
      currentSourceIndex = 1;
    }
    task.checkCancel(onCancel: (){
      box.close();
    });
    if(list.isNotEmpty){
      currentIdentify = list[currentSourceIndex];
      configMap[configCurrentSourceType] = SourceType.values.indexOf(currentType).toString();
      configMap[configCurrentSourceKey] = currentIdentify;
      await box.putSingle(configMap);
    }
    await box.close();
    task.checkCancel();

    if(currentType == SourceType.manga){
      final component = input.getMangaHomeComponent(currentIdentify);
      final mangaHomeTabResp = await component?.getHomeTab();
      task.checkCancel();
      final mangaHomeTab = mangaHomeTabResp?.tabList;
      if (mangaHomeTabResp?.payload.code == 0 && mangaHomeTab != null){
        state = state.copyWith(
            loading: false,
            isError: false,
            errorMsg: "",

            mangaSourceList: mangaSourceList,
            mangaTabList: mangaHomeTab,

            novelSourceList: novelSourceList,
            novelTabList: [],

            currentType: currentType,
            currentSourceIndex: currentSourceIndex
        );
      }else{
        state = state.copyWith(
          loading: false,
          isError: true,
          errorMsg: "${mangaHomeTabResp?.payload.errorMsg}"
        );
      }
    }else{
      final component = input.getNovelHomeComponent(currentIdentify);
      final novelHomeTabResp = await component?.getHomeTab();
      task.checkCancel();
      final novelHomeTab = novelHomeTabResp?.tabList;
      if (novelHomeTabResp?.payload.code == 0 && novelHomeTab != null){
        state = state.copyWith(
            loading: false,
            isError: false,
            errorMsg: "",

            mangaSourceList: mangaSourceList,
            mangaTabList: [],

            novelSourceList: novelSourceList,
            novelTabList: novelHomeTab,

            currentType: currentType,
            currentSourceIndex: currentSourceIndex
        );
      }else{
        state = state.copyWith(
            loading: false,
            isError: true,
            errorMsg: "${novelHomeTabResp?.payload.errorMsg}"
        );
      }
    }



  }

}

