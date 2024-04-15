import 'package:flutter/cupertino.dart';

abstract class CancelableTask {
  static final Exception hasCancel = Exception("Task has been cancel");

  bool _isCancel = false;
  late Future<void> future;

  CancelableTask() {
    future = Future(() async {
      await onInvoke();
    });
  }

  Future<void> onInvoke();

  void cancel() {
    _isCancel = true;
  }

  void checkCancel({void Function()? onCancel}) {
    if (_isCancel) {
      onCancel?.call();
      throw hasCancel;
    }
  }

  /// 等待任务完成
  /// return 是否成功，false 代表任务是被 cancel 的
  Future<bool> join() async {
    try {
      await future;
      return true;
    } catch (e) {
      if (e == hasCancel) {
        return false;
      }
      rethrow;
    }
  }
}

class CancelableTaskWrapper<O> extends CancelableTask {
  final Future<O> Function(CancelableTask task) _func;

  CancelableTaskWrapper(this._func);

  @override
  Future<void> onInvoke() async {
    await _func(this);
  }
}

class CancelableWorker<I> {
  final Future<void> Function(CancelableTask task, I) _func;

  /// 当前正在执行的任务
  CancelableTask? _lastTask;

  CancelableWorker(this._func);

  Future<void> work(I input) async {
    _lastTask?.cancel();
    await _lastTask?.join();
    _lastTask = CancelableTaskWrapper((task) async {
      await _func(task, input);
    });
  }
}

mixin CancelableWorkerContainer<I, O> {

  /// 当前正在执行的任务
  @protected
  CancelableTask? _lastTask;

  @protected
  Future<O> onWork(CancelableTask task,I input);

  @protected
  void cancelCurrent(){
    _lastTask?.cancel();
  }

  @protected
  Future<void> performWork(I input, {Function(O?)? callback}) async {
    _lastTask?.cancel();
    await _lastTask?.join();
    final task = CancelableTaskWrapper((task) async {
      try {
        final o = await onWork(task, input);
        callback?.call(o);
      }catch (e) {
        if (e == CancelableTask.hasCancel) {
          callback?.call(null);
          return;
        }
        rethrow;
      }

    });
    _lastTask = task;
  }



}
