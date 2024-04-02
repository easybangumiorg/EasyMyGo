import 'dart:collection';
import 'dart:io';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/database/database.dart';
import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:async/async.dart';

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
@Riverpod(keepAlive: true)
class ExtensionController extends _$ExtensionController {
  static ExtensionController of(WidgetRef ref) =>
      ref.watch(extensionControllerPod.notifier);

  static ExtensionState watch(WidgetRef ref) =>
      ref.watch(extensionControllerPod);

  static List<ExtensionData> watchExtensionsOnly(WidgetRef ref) =>
      ref.watch(extensionControllerPod
          .select((value) => value.extensions.values.toList(growable: false)));

  static bool watchLoadingOnly(WidgetRef ref) =>
      ref.watch(extensionControllerPod.select((value) => value.loading));

  CancelableOperation<int>? _lastLoadJob;
  // 当前加载的版本，启动时第一次加载为 0 ，后续递增
  int _version = -1;

  ExtensionController() {
    Future.microtask(() {
      _innerLoadStart();
    });

  }

  @override
  ExtensionState build() {
    return ExtensionState.none;
  }

  /// 触发刷新
  Future<void> refresh() async {
    await _innerLoadStart();
  }

  Future<void> _innerLoadStart() async {
    final lastVersion = (await _lastLoadJob?.cancel()) ?? _version;
    _lastLoadJob = null;
    _lastLoadJob = _newOperation(lastVersion + 1);
    _lastLoadJob?.then((version) async {
      await _innerLoad(version);
    });
  }

  Future<void> _innerLoad(int version) async {
    _updateWithVersion(version, (p0) => p0.copyWith(loading: true));
    final applicationDir = await EasyConstant.applicationPath;
    final extensionsPath = join(applicationDir.path, "extensions");
    final extensionsDir = Directory(extensionsPath);
    // 为空
    if (!await extensionsDir.exists()){
      await extensionsDir.create(recursive: true);
      _updateWithVersion(version, (p0) => p0.copyWith(loading: false, extensions: {}));
      return;
    }

    final List<Future<ExtensionInfo?>> parsing = [];

    // 子文件夹名称为加载方式
    final dirList = await extensionsDir.list(recursive: true, followLinks: false).toList();
    _checkVersion(version);
    for (var dir in dirList) {
      if(! await FileSystemEntity.isDirectory(dir.path)){
        continue;
      }
      final name = basename(dir.path);
      final loader = ExtensionLoader.ofName(name);
      if(loader == null){
        continue;
      }
      final fileList = await Directory(dir.path).list(recursive: false, followLinks: false).toList();
      for (var file in fileList) {
        if (! await FileSystemEntity.isFile(file.path)){
          continue;
        }
        // 异步解析
        parsing.add(loader.parse(file.path));
      }
    }

    final List<Future<ExtensionData>> extensionDataList = [];
    for (var value in parsing) {
      _checkVersion(version);
      final res = await value;
      if(res != null){
        final loader = ExtensionLoader.of(res.loadType);
        extensionDataList.add(loader.load(res));
      }
    }

    final HashMap<String, ExtensionData> data = HashMap();
    for (var value1 in extensionDataList) {
      _checkVersion(version);
      final r = await value1;
      data[r.info.package] = r;
    }

    _updateWithVersion(version, (p0) => p0.copyWith(loading: false, extensions: data));
  }

  void _updateWithVersion(
      int version, ExtensionState Function(ExtensionState) covert) {
    // 版本检查
    final curVersion = _version;
    if (version == curVersion) {
      state = covert(state);
      return;
    }
    throw Exception("Future has been canceled");
  }

  void _checkVersion(int version){
    final curVersion = _version;
    if(version != curVersion){
      throw Exception("Future has been canceled");
    }
  }

  CancelableOperation<int> _newOperation(int version) =>
      CancelableOperation.fromFuture(Future((){
        _version = version;
        return version;
      }),
          onCancel: () => version);
}
