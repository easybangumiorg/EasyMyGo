
import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/database/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global.g.dart';
part 'global.freezed.dart';

/// 初始化 => 数据迁移 => 进入 App

@freezed
class GlobalState with _$GlobalState {
  factory GlobalState({
    // 是否在初始化中（包括数据迁移阶段也会为 true）
    required bool isInitialing,

    // 数据迁移进度，0~100，为 0 则代表还在初始化组件
    required int migratingProcess,

    // 是否准备好（进入 app）
    required bool isReady,
  }) = _GlobalState;

  factory GlobalState.fromJson(Map<String, Object?> json) =>
      _$GlobalStateFromJson(json);
}


@Riverpod(keepAlive: true)
class Global extends _$Global {

  static Global? _current;
  static Global get current {
    assert(_current != null,
    'No instance of Preferences was loaded. It cant use before init.');
    return _current!;
  }


  @override
  GlobalState build() {
    return GlobalState(isInitialing: false, migratingProcess: 0, isReady: false);
  }

  // 初始化，闪屏页调用
  Future<void> init() async {
    state = state.copyWith(
      isInitialing: true,
      migratingProcess: 0,
      isReady: false,
    );
    // await ref.read(databasePod.notifier).init();
    // await ref.read(preferencesPod.notifier).init();
    state = state.copyWith(
      isInitialing: true,
      migratingProcess: 0,
      isReady: false,
    );
    await migrate();
    _current = this;
  }

  // 数据更新，闪屏页调用
  Future<void> migrate() async {
    state = state.copyWith(
      isInitialing: true,
      migratingProcess: 0,
      isReady: false,
    );


  }
}

