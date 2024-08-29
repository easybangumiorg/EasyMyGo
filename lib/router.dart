import 'package:easy_mygo/ui/main/main.dart';
import 'package:easy_mygo/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// Created by heyanlin on 2023/9/22.

class Routes {
  static const String main = "/main";
}

@Riverpod(keepAlive: true)
GoRouter easyRouter(EasyRouterRef ref) => GoRouter(
      initialLocation: Routes.main,
      redirect: (BuildContext context, GoRouterState state) {
        return null;
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.main,
          builder: (BuildContext context, GoRouterState state) {
            return Material(
              child: MainScreen(),
            );
          },
        ),
      ],
    );
