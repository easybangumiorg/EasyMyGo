import 'dart:collection';
import 'dart:js_util';

/// Created by heyanlin on 2023/9/22.


Injekt globalInjekt = Injekt();

class Injekt {
  Map<Type, Object Function(Object?)> factories = HashMap();
  Map<Type, Object> singletonMap = HashMap();
  Map<Instance, Object> preKeyMap = HashMap();


  T get<T>({Object? key}) {
    T? res = factories[T]?.call(key) as T?;
    if (res == null) {
      throw Exception("Un register injekt $T");
    } else {
      return res;
    }
  }


  InjektItem<T> injectLazy<T>({Object? key}) {
    return InjektItem(this, key);
  }

  void addSingletonFactory<T>(T Function() factory){
    factories[T] = (Object? key){
      if(!singletonMap.containsKey(T)){
        singletonMap[T] = factory.call() as Object;
      }
      return singletonMap[T] as Object;
    };
  }

  void addPreKeyFactory<T>(T Function(Object) factory){
    factories[T] = (Object? key){
      if(key == null){
        throw Exception("Injekt Key could not be null");
      }
      Instance instance = Instance(T, key);
      if(!preKeyMap.containsKey(instance)){
        preKeyMap[instance] = factory(key) as Object;
      }
      return preKeyMap[instance] as Object;
    };
  }


}

class InjektItem<T> {
  final Injekt _injekt;
  final Object? _key;

  InjektItem(this._injekt, this._key);

  T get() {
    return _injekt.get<T>(key: _key);
  }
}

class Instance {
  Type type;
  Object key;

  Instance(this.type, this.key);

  @override
  int get hashCode => Object.hash(type, key);

  @override
  bool operator ==(Object other) {
    return other is Instance && other.type == type && other.key == key;
  }
}
