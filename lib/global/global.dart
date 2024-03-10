
import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/database/database.dart';
import 'package:easy_mygo/preferences/preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global.g.dart';
part 'global.freezed.dart';



@freezed
class GlobalState with _$GlobalState {
  factory GlobalState({
    // 是否在初始化中
    required bool isInitialing,

    // 数据迁移进度，0~100
    required int migratingProcess,

    // 是否准备好（进入 app）
    required bool isReady,
  }) = _GlobalState;

  factory GlobalState.fromJson(Map<String, Object?> json) =>
      _$GlobalStateFromJson(json);
}


@Riverpod(keepAlive: true)
class Global extends _$Global {
  @override
  GlobalState build() {
    return GlobalState(isInitialing: true, migratingProcess: 0, isReady: false);
  }

  // 初始化，闪屏页调用
  // ignore: avoid_build_context_in_providers
  Future<void> init(BuildContext context) async {
    state = state.copyWith(
      isInitialing: true,
      migratingProcess: 0,
      isReady: false,
    );
    await ref.read(databasePod.notifier).init();
    await ref.read(preferencesPod.notifier).init();
    state = state.copyWith(
      isInitialing: false,
      migratingProcess: 0,
      isReady: false,
    );
  }

  // 数据更新，闪屏页调用
  Future<void> migrate() async {
    state = state.copyWith(
      isInitialing: false,
      migratingProcess: 0,
      isReady: false,
    );
    final preferences = ref.read(preferencesPod.notifier);
    final cur = preferences.getInt("last_version") ?? BuildConfig.versionCode;
    // 数据迁移代码



    preferences.setInt("last_version", BuildConfig.versionCode);
    state = state.copyWith(
      isInitialing: false,
      migratingProcess: 100,
      isReady: true,
    );
  }
}

