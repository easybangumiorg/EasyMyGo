import 'package:easy_mygo/ui/main/main.dart';
import 'package:easy_mygo/ui/splash/splash.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// Created by heyanlin on 2023/9/22.

@Riverpod(keepAlive: true)
final class Routes extends _$Routes {
  static const String main = "/main";

  @override
  GoRouter build() => GoRouter(
        initialLocation: main,
        redirect: (BuildContext context, GoRouterState state) {
          return null;
        },
        routes: <RouteBase>[
          GoRoute(
            path: main,
            builder: (BuildContext context, GoRouterState state) {
              return MainScreen();
            },
          ),
        ],
      );
}
