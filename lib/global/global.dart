import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'global.freezed.dart';
part 'global.g.dart';

@freezed
class GlobalState with _$GlobalState {
  factory GlobalState({
    required BuildContext ctx,
    required AppLocalizations l10n,
    required SharedPreferences preferences,
  }) = _GlobalState;
}

@riverpod
class Global extends _$Global {
  @override
  GlobalState? build() {
    return null;
  }

  // ignore: avoid_build_context_in_providers
  Future<void> init(BuildContext context) async {
    final i10n = AppLocalizations.of(context);
    final preferences = await SharedPreferences.getInstance();
    // ignore: use_build_context_synchronously
    state = GlobalState(ctx: context, l10n: i10n, preferences: preferences);
  }
}

extension GlobalExt on AutoDisposeNotifier {
  GlobalState get global => ref.watch(globalProvider)!;
}