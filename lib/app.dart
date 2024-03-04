import 'package:easy_book/global/global.dart';
import 'package:easy_book/router.dart';
import 'package:easy_book/theme/theme.dart';
import 'package:easy_book/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: EasyBookApp()));
}

class EasyBookApp extends HookConsumerWidget {
  const EasyBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter route = ref.watch(routesProvider);
    final ThemeState themeState = ref.watch(themeControllerProvider);

    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).app_name,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: themeState.seedColor),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: themeState.seedColor, brightness: Brightness.dark),
          useMaterial3: true,
          brightness: Brightness.dark),
      routerConfig: route,
      themeMode: ThemeMode.values[themeState.darkMode],
    );
  }
}
