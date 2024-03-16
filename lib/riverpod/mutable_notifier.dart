import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MutableNotifier<State> extends Notifier<State> {
  final State _def;

  MutableNotifier(this._def);

  @override
  State build() {
    return _def;
  }

  void update(State Function(State) covert) {
    state = covert(state);
  }
}

NotifierProvider<MutableNotifier<State>, State> mutableNotifier<State>(State def) {
  return NotifierProvider(() => MutableNotifier(def));
}

extension NotifierProviderExt<State> on NotifierProvider<MutableNotifier<State>, State> {
  void update(Ref ref, State Function(State) covert){
    final n = ref.read(notifier);
    n.update(covert);
  }
}
