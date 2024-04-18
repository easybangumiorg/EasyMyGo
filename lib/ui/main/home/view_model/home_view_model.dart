

import 'dart:convert';

import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/tab/home_tab.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/utils/cancelable_task/cancelable_task.dart';
import 'package:easy_mygo/utils/hive/hive.dart';
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

    // 所有源的 Identify
    @Default({}) @JsonKey(name: "source_identify_map") Map<SourceType, String> sourceIdentifyMap,
    // 当前选择源类型
    @Default(SourceType.manga) @JsonKey(name: "current_type") SourceType currentType,
    // 当前选择源 Identify
    @Default("") @JsonKey(name: "current_source_identify") String currentSourceIdentify,

    // 所有一级 Tab
    @Default([]) @JsonKey(name: "home_tab_list") List<BookHomeTab> bookTabList,

    // 当前选择 tab
    @Default(null) @JsonKey(name: "current_home_tab") BookHomeTab? currentHomeTab,

  }) = _HomeViewState;

  factory HomeViewState.fromJson(Map<String, dynamic> json) =>
      _$HomeViewStateFromJson(json);
}

@Riverpod()
class HomeViewModel extends _$HomeViewModel with CancelableWorkerContainer<SourceBundle, void> {

  static HomeViewModel of(dynamic ref) =>
      ref.watch(homeViewModelPod.notifier);

  static HomeViewState watch(dynamic ref) =>
      ref.watch(homeViewModelPod);

  static const configCurrentSourceType = "home_current_source_type";
  static const configCurrentSourceIdentify = "home_current_source_identify";

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
      );
      return;
    }

    final mangaSourceList = mangaHomeList.map((e) => e.sourceInfo.identify).toList();
    final novelSourceList = novelHomeList.map((e) => e.sourceInfo.identify).toList();

    SourceType currentType = state.currentType;
    String currentIdentify = state.currentSourceIdentify;

    final box = await HiveBox.config();
    final configMap = await box.getSingle() ?? <String, dynamic>{};
    if (isFirst){
      currentType = SourceType.values.elementAtOrNull(int.tryParse(configMap[configCurrentSourceType]??"0")??0) ?? currentType;
      currentIdentify = configMap[configCurrentSourceIdentify]??"";
    }

    final list = currentType == SourceType.manga? mangaSourceList : novelSourceList;
    int currentSourceIndex = -1;
    if(currentIdentify.isNotEmpty){
      currentSourceIndex = list.indexOf(currentIdentify);
    }
    if(currentSourceIndex < 0 || currentSourceIndex >= list.length){
      currentSourceIndex = 0;
    }
    task.checkCancel(onCancel: (){
      box.close();
    });
    if(list.isNotEmpty){
      currentIdentify = list[currentSourceIndex];
      configMap[configCurrentSourceType] = SourceType.values.indexOf(currentType).toString();
      configMap[configCurrentSourceIdentify] = currentIdentify;
      await box.putSingle(configMap);
    }
    await box.close();
    task.checkCancel();

    final List<BookHomeTab> homeTabList = [];
    String? errorMsg;

    if(currentType == SourceType.manga){
      final component = input.getMangaHomeComponent(currentIdentify);
      final mangaHomeTabResp = await component?.getHomeTab();
      task.checkCancel();
      final mangaHomeTab = mangaHomeTabResp?.tabList;
      if (mangaHomeTabResp?.payload.code == 0 && mangaHomeTab != null){
        homeTabList.addAll(mangaHomeTab);
        task.checkCancel();
      }else{
        errorMsg = "${mangaHomeTabResp?.payload.errorMsg}";
      }
    }else{
      final component = input.getNovelHomeComponent(currentIdentify);
      final novelHomeTabResp = await component?.getHomeTab();
      task.checkCancel();
      final novelHomeTab = novelHomeTabResp?.tabList;
      if (novelHomeTabResp?.payload.code == 0 && novelHomeTab != null){
        homeTabList.addAll(novelHomeTab);
      }else{
        errorMsg = "${novelHomeTabResp?.payload.errorMsg}";
        state = state.copyWith(
            loading: false,
            isError: true,
            errorMsg: "${novelHomeTabResp?.payload.errorMsg}"
        );
      }
    }
    if (errorMsg != null){
      state = state.copyWith(
          loading: false,
          isError: true,
          errorMsg: errorMsg
      );
    }else{
      state = state.copyWith(
          loading: false,
          isError: false,
          currentType: currentType,
          currentSourceIdentify: currentIdentify,
          bookTabList: homeTabList,
          currentHomeTab: homeTabList.firstOrNull
      );
    }
  }

}

