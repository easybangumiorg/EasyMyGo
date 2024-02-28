import 'package:easy_book/global/global.dart';
import 'package:easy_book/router.dart';
import 'package:easy_book/theme/theme.dart';
import 'package:easy_book/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


void main() {
  runApp(const ProviderScope(child: EasyBookApp()));
}

class EasyBookApp extends ConsumerWidget {
  const EasyBookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Global global = ref.watch(globalProvider.notifier);
    GlobalState? globalState = ref.watch(globalProvider);
    useEffect(() {
      if(globalState == null){
        global.init(context);
      }
      return null;
    }, [globalState]);

    if (globalState == null) {
      // 闪屏
      return const SplashScreen();
    } else {
      ThemeState themeState = ref.watch(themeControllerProvider);
      // 跟随系统
      if (themeState.darkMode == 0) {
        return MaterialApp.router(
          onGenerateTitle: (context) => globalState.l10n.app_name,
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
          routerConfig: Routes.router,
        );
      } else {
        return MaterialApp.router(
          onGenerateTitle: (context) => globalState.l10n.app_name,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: themeState.seedColor,
                  brightness: themeState.darkMode == 1
                      ? Brightness.light
                      : Brightness.dark),
              useMaterial3: true,
              brightness:
              themeState.darkMode == 1 ? Brightness.light : Brightness.dark),
          routerConfig: Routes.router,
        );
      }
    }
  }
}
