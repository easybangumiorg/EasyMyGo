import 'package:easy_book/ui/main/Main.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Created by heyanlin on 2023/9/22.

const String mainScreen = "/main";

final GoRouter router = GoRouter(
  initialLocation: mainScreen,
  routes: <RouteBase>[
    GoRoute(
      path: mainScreen,
      builder: (BuildContext context, GoRouterState state){
        return const MainScreen();
      },
    )
  ]
);