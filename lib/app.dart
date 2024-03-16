import 'dart:io';


import 'package:easy_mygo/hive/hive.dart';
import 'package:easy_mygo/router.dart';
import 'package:easy_mygo/theme/theme.dart';
import 'package:easy_mygo/ui/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'l10n/l10n.dart';



void main() async {
  runApp(const ProviderScope(
      child: EasyBookApp()
  ));
}

class EasyBookApp extends HookConsumerWidget {
  const EasyBookApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {



    // =============== 初始化前监听 ======================

    final ThemeController themeController = ref.read(themeControllerPod);
    final ThemeConfig themeConfig = ref.watch(themeController.config);

    // =============== 初始化相关代码 =====================

    // 1.主题配置
    if (themeConfig == ThemeConfig.none){
      return const SplashScreen();
    }
    // =============== 初始化结束 =====================


    final GoRouter route = ref.watch(routesPod);

    final seedColor = Colors.primaries.elementAtOrNull(themeConfig.seedColorIndex) ?? Colors.red;
    final darkMode = ThemeMode.values.elementAtOrNull(themeConfig.darkModeIndex) ?? ThemeMode.system;


    return MaterialApp.router(
      onGenerateTitle: (context) => S.of(context).app_name,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.dark),
          useMaterial3: true,
          brightness: Brightness.dark),
      routerConfig: route,
      themeMode: darkMode,
    );
  }
}
