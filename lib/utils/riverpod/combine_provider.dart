

import 'package:hooks_riverpod/hooks_riverpod.dart';

extension ProviderExt<S> on Provider<S> {
  Provider<R> map<R>(R Function(S value) mapper) {
    return Provider((ref) {
      final value = ref.watch(this);
      return mapper(value);
    });
  }
}

Provider<Result> combineProvider<Result, A, B>(
    Provider<A> providerA,
    Provider<B> providerB,
    Result Function(A, B) combiner,) {
  return Provider((ref) {
    final a = ref.watch(providerA);
    final b = ref.watch(providerB);
    return combiner(a, b);
  });
}

Provider<Result> combineProvider3<Result, A, B, C>(
    Provider<A> providerA,
    Provider<B> providerB,
    Provider<C> providerC,
    Result Function(A, B, C) combiner,) {
  return Provider((ref) {
    final a = ref.watch(providerA);
    final b = ref.watch(providerB);
    final c = ref.watch(providerC);
    return combiner(a, b, c);
  });
}

Provider<Result> combineProvider4<Result, A, B, C, D>(
    Provider<A> providerA,
    Provider<B> providerB,
    Provider<C> providerC,
    Provider<D> providerD,
    Result Function(A, B, C, D) combiner,) {
  return Provider((ref) {
    final a = ref.watch(providerA);
    final b = ref.watch(providerB);
    final c = ref.watch(providerC);
    final d = ref.watch(providerD);
    return combiner(a, b, c, d);
  });
}