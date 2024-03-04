import 'package:easy_book/ui/main/main.dart';
import 'package:easy_book/ui/splash/splash.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'global/global.dart';

part 'router.g.dart';

/// Created by heyanlin on 2023/9/22.

@Riverpod(keepAlive: true)
final class Routes extends _$Routes {
  static const String splash = "/";
  static const String main = "/main";
  static const String search = "/search";

  @override
  GoRouter build() => GoRouter(
        initialLocation: splash,
        redirect: (BuildContext context, GoRouterState state) {
          GlobalState? globalState = ref.watch(globalProvider);
          if (globalState == null) {
            return splash;
          } else {
            return null;
          }
        },
        routes: <RouteBase>[
          GoRoute(
              path: splash,
              builder: (BuildContext context, GoRouterState state) {
                return const SplashScreen();
              },
          ),
          GoRoute(
            path: main,
            builder: (BuildContext context, GoRouterState state) {
              return MainScreen();
            },
          ),
        ],
      );
}
