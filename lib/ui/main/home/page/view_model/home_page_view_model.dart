

import 'dart:async';

import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/entity/book/home_tab/book_home_tab.dart';
import 'package:easy_mygo/page/book_cover/book_cover_page.dart';
import 'package:easy_mygo/page/book_cover/manga_cover_page.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/utils/cancelable_task/cancelable_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_view_model.g.dart';
part 'home_page_view_model.freezed.dart';


@freezed
class HomePageState with _$HomePageState {

  static HomePageState init = HomePageState();

  factory HomePageState({
    @Default([]) @JsonKey(name: "cover_list") List<BookCover> coverList,
    @Default(null) @JsonKey(name: "next_key") String? nextKey,
    @Default(false) @JsonKey(name: "is_error") bool isError,
    @Default("") @JsonKey(name: "error_msg") String errorMsg,
  }) = _HomePageState;

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}

extension HomePageStateExt on HomePageState {
  HomePageState copyWithAppend(
      {List<BookCover>? coverList, String? nextKey}) {
    if (coverList == null) {
      return HomePageState(coverList: this.coverList, nextKey: nextKey);
    }
    final List<BookCover> n = [];
    n.addAll(this.coverList);
    n.addAll(coverList);
    return HomePageState(coverList: n, nextKey: nextKey);
  }
}


@Riverpod()
class HomePageViewModel extends _$HomePageViewModel with CancelableWorkerContainer<bool, (bool, String?)> {


  static HomePageViewModel of(dynamic ref, BookCoverPage page) =>
      ref.watch(homePageViewModelProvider(page).notifier);

  static HomePageState watch(dynamic ref, BookCoverPage page) =>
      ref.watch(homePageViewModelProvider(page));



  @override
  HomePageState build(BookCoverPage page){
    return HomePageState.init;
  }

  Future<(bool?, String?)> loadMore() {
    final Completer<(bool?, String?)> completer = Completer();
    performWork(false, callback: (o) {
      if (o == null) {
        completer.complete((null, "task be canceled"));
      } else {
        completer.complete(o);
      }
    });
    return completer.future;
  }

  Future<(bool?, String?)> refresh() {
    final Completer<(bool?, String?)> completer = Completer();
    performWork(true, callback: (o){
      if (o == null) {
        completer.complete((null, "task be canceled"));
      } else {
        completer.complete(o);
      }
    });
    return completer.future;
  }

  // 标记初始化
  void firstInit(){
    state = HomePageState();
  }


  @override
  Future<(bool, String?)> onWork(CancelableTask task, bool input) async {
    if (input){
      return await _innerRefresh(task);
    } else {
      return await _innerLoad(task);
    }
  }

  Future<(bool, String?)> _innerRefresh(CancelableTask task) async {
    final key = await page.initKey();
    final (payload, resp, next) = await page.loadPageData(key);
    task.checkCancel();
    if (payload.isError){
      final sta = HomePageState(isError: true, errorMsg: payload.errorMsg);
      state = sta;
      return (true, payload.errorMsg);
    }
    final sta = HomePageState(coverList: resp, nextKey: next);
    state = sta;
    return (false, next);
  }

  Future<(bool, String?)> _innerLoad(CancelableTask task) async {
    final key = await page.initKey();
    task.checkCancel();
    final (payload, resp, next) = await page.loadPageData(key);
    task.checkCancel();
    if (payload.isError){
      final sta = HomePageState(isError: true, errorMsg: payload.errorMsg);
      state = sta;
      return (true, payload.errorMsg);
    }
    final sta = state.copyWithAppend(coverList: resp, nextKey: next);
    state = sta;
    return (false, next);
  }






}