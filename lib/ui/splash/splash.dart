import 'package:easy_mygo/generated/l10n.dart';
import 'package:easy_mygo/global/global.dart';
import 'package:easy_mygo/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


// 闪屏页，承载整个 app 的初始化
class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Global global = ref.watch(globalProvider.notifier);
    GlobalState? globalState = ref.watch(globalProvider);
    GoRouter router = ref.watch(routesProvider);

    useEffect(() {
      if (globalState == null) {
        Future.microtask(() => {
          global.init(router.routeInformationParser.configuration.navigatorKey.currentContext ?? context)
        });
      } else {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          context.go(Routes.main);
        });
      }
      return null;
    }, [globalState]);

    return Text(S
        .of(context)
        .app_name);
  }
}
