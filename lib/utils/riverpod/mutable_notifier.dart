import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MutableNotifier<State> extends Notifier<State> {
  final State _def;
  bool _isInit = false;
  late final void Function(Ref)? _onInit;

  MutableNotifier( this._def, {void Function(Ref)? onInit}){
    _onInit = onInit;
  }

  @override
  State build() {
    if(!_isInit){
      _isInit = true;
      Future.microtask((){
        _onInit?.call(ref);
      });
    }
    return _def;
  }

  void update(State Function(State) covert) {
    state = covert(state);
  }
}



NotifierProvider<MutableNotifier<State>, State> mutableNotifier<State>(State def, {void Function(Ref)? onInit}) {
  return NotifierProvider(() => MutableNotifier<State>(def, onInit: onInit));
}

extension NotifierProviderExt<State> on NotifierProvider<MutableNotifier<State>, State> {
  void update(Ref ref, State Function(State) covert){
    final n = ref.read(notifier);
    n.update(covert);
  }

  State get(Ref ref){
    final n = ref.read(this);
    return n;
  }

  State of(Ref ref){
    final n = ref.watch(this);
    return n;
  }

  State watch(WidgetRef ref){
    final n = ref.watch(this);
    return n;
  }

}

extension ProviderExt<State> on Provider<State> {

  State get(Ref ref){
    final n = ref.read(this);
    return n;
  }

  State of(Ref ref){
    final n = ref.watch(this);
    return n;
  }

  State watch(WidgetRef ref){
    final n = ref.watch(this);
    return n;
  }
}

