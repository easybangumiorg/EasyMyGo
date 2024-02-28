import 'package:easy_book/ui/main/main.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Created by heyanlin on 2023/9/22.

final class Routes {
  static const String splash = "/splash";
  static const String main = "/main";
  static const String search = "/search";

  static final GoRouter router = GoRouter(
    initialLocation: main,
    routes: <RouteBase>[
      GoRoute(
        path: main,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen();
        },
      ),
      GoRoute(
        path: search,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen();
        },
      ),
    ],
  );
}
