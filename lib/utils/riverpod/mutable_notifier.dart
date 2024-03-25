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

  State watch(dynamic ref){
    if(ref is Ref){
      return ref.watch(this);
    }else if(ref is WidgetRef){
      return ref.watch(this);
    }
    throw Exception("only support Ref or WidgetRef");
  }

  State read(dynamic ref){
    if(ref is Ref){
      return ref.read(this);
    }else if(ref is WidgetRef){
      return ref.read(this);
    }
    throw Exception("only support Ref or WidgetRef");
  }

}

extension ProviderExt<State> on Provider<State> {

  State watch(dynamic ref){
    if(ref is Ref){
      return ref.watch(this);
    }else if(ref is WidgetRef){
      return ref.watch(this);
    }
    throw Exception("only support Ref or WidgetRef");
  }

  State read(dynamic ref){
    if(ref is Ref){
      return ref.read(this);
    }else if(ref is WidgetRef){
      return ref.read(this);
    }
    throw Exception("only support Ref or WidgetRef");
  }
}

