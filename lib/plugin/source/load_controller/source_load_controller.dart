import 'package:easy_mygo/entity/extension/extension_data/extension_data.dart';
import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/extension/controller/extension_controller.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';
import 'package:easy_mygo/utils/cancelable_task/cancelable_task.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'source_load_controller.g.dart';

/// SourceLoadController.watch(WidgetRef ref)
/// SourceLoadController.watchSourceListOnly(WidgetRef ref)
/// SourceLoadController.watchLoadingOnly(WidgetRef ref)
///
/// ExtensionState → SourceLoadState

class SourceLoadState {
  static final none = SourceLoadState(loading: false, sourceList: []);

  bool loading;
  List<SourceData> sourceList;

  SourceLoadState({
    this.loading = true,
    this.sourceList = const [],
  });

  SourceLoadState copyWith({
    bool? loading,
    List<SourceData>? sourceList,
  }) {
    return SourceLoadState(
      loading: loading ?? this.loading,
      sourceList: sourceList ?? this.sourceList,
    );
  }
}

@Riverpod()
class SourceLoadController extends _$SourceLoadController with CancelableWorkerContainer<ExtensionState> {

  static SourceLoadController of(dynamic ref) =>
      ref.watch(sourceLoadControllerPod.notifier);

  static SourceLoadState watch(dynamic ref) =>
      ref.watch(sourceLoadControllerPod);

  static List<SourceData> watchSourceListOnly(dynamic ref) =>
      ref.watch(sourceLoadControllerPod.select((value) => value.sourceList));

  static bool watchLoadingOnly(dynamic ref) =>
      ref.watch(sourceLoadControllerPod.select((value) => value.loading));

  @override
  SourceLoadState build() {
    ref.listen(extensionControllerPod, (previous, next) {
      if (next == ExtensionState.none) {
        state = SourceLoadState.none;
      } else if (next.loading) {
        state = state.copyWith(loading: true);
      } else {
        performWork(next);
      }
    });
    return SourceLoadState.none;
  }

  @override
  Future<void> onWork(CancelableTask task ,ExtensionState input) async {
    task.checkCancel();
    final extensionDataList = input.extensions.values;
    final List<SourceInfo> info = [];

    for (var extensionData in extensionDataList) {
      if(extensionData.state != ExtensionLoadState.loaded){
        continue;
      }
      for (var sourceInfo in extensionData.sources ?? []) {
        info.add(sourceInfo);
      }
    }
    task.checkCancel();

    final List<Future<SourceData>> loading = [];
    for (var sourceInfo in info) {
      final loader = SourceLoader.of(sourceInfo.loaderType);
      loading.add(loader.load(sourceInfo));
    }
    final List<SourceData> data = await Future.wait(loading);

    task.checkCancel();
    state = state.copyWith(loading: false, sourceList: data);
  }



}
