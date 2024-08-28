import 'dart:collection';
import 'dart:io';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/inner/inner_source.dart';
import 'package:easy_mygo/utils/cancelable_task/cancelable_task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'extension_controller.g.dart';

part 'extension_controller.freezed.dart';

@freezed
class ExtensionState with _$ExtensionState {
  static final none = ExtensionState(loading: true);

  factory ExtensionState({
    @Default(true) bool loading,
    @Default({}) Map<String, ExtensionData> extensions,
  }) = _ExtensionState;

  factory ExtensionState.fromJson(Map<String, Object?> json) =>
      _$ExtensionStateFromJson(json);
}

/// 负责拓展加载，只加载拓展，不加载源
/// 最终源的加载在 SourceController
@Riverpod()
class ExtensionController extends _$ExtensionController
    with CancelableWorkerContainer<void, void> {
  static ExtensionController of(dynamic ref) =>
      ref.watch(extensionControllerPod.notifier);

  static ExtensionState watch(dynamic ref) => ref.watch(extensionControllerPod);

  static List<ExtensionData> watchExtensionsOnly(dynamic ref) =>
      ref.watch(extensionControllerPod
          .select((value) => value.extensions.values.toList(growable: false)));

  static bool watchLoadingOnly(dynamic ref) =>
      ref.watch(extensionControllerPod.select((value) => value.loading));

  ExtensionController() {
    Future.microtask(() {
      performWork(null);
    });
  }

  @override
  ExtensionState build() {
    return ExtensionState.none;
  }

  /// 触发刷新
  Future<void> refresh() async {
    await performWork(null);
  }

  @override
  Future<void> onWork(CancelableTask task, void input) async {
    task.checkCancel();
    state = state.copyWith(loading: true);

    final applicationDir = await EasyConstant.applicationPath;
    final extensionsPath = join(applicationDir.path, "extensions");
    final extensionsDir = Directory(extensionsPath);
    // 为空
    if (!await extensionsDir.exists()) {
      await extensionsDir.create(recursive: true);
      task.checkCancel();
      state = state.copyWith(loading: false, extensions: {});
      return;
    }

    // 先加载内置源
    final List<Future<ExtensionInfo?>> parsing = [
      Future(() => InnerSourceFactory.innerExtensionInfo)
    ];

    // 子文件夹名称为加载方式
    final dirList =
        await extensionsDir.list(recursive: true, followLinks: false).toList();
    task.checkCancel();
    for (var dir in dirList) {
      if (!await FileSystemEntity.isDirectory(dir.path)) {
        continue;
      }
      final name = basename(dir.path);
      final loader = ExtensionLoader.ofName(name);
      if (loader == null) {
        continue;
      }
      final fileList = await Directory(dir.path)
          .list(recursive: false, followLinks: false)
          .toList();
      for (var file in fileList) {
        if (!await FileSystemEntity.isFile(file.path)) {
          continue;
        }
        // 异步解析
        parsing.add(loader.parse(file.path));
      }
    }

    final List<Future<ExtensionData>> extensionDataList = [];
    for (var value in parsing) {
      task.checkCancel();
      final res = await value;
      if (res != null) {
        final loader = ExtensionLoader.of(res.loadType);
        extensionDataList.add(loader.load(res));
      }
    }

    final HashMap<String, ExtensionData> data = HashMap();
    for (var value1 in extensionDataList) {
      task.checkCancel();
      final r = await value1;
      data[r.info.package] = r;
    }
    task.checkCancel();
    state = state.copyWith(loading: false, extensions: data);
  }
}
