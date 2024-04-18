// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `纯纯 Mygo`
  String get app_name {
    return Intl.message(
      '纯纯 Mygo',
      name: 'app_name',
      desc: '软件名称',
      args: [],
    );
  }

  /// `主页`
  String get home {
    return Intl.message(
      '主页',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `更多`
  String get more {
    return Intl.message(
      '更多',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `历史`
  String get history {
    return Intl.message(
      '历史',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `书架`
  String get library {
    return Intl.message(
      '书架',
      name: 'library',
      desc: '',
      args: [],
    );
  }

  /// `下拉刷新`
  String get pull_to_refresh {
    return Intl.message(
      '下拉刷新',
      name: 'pull_to_refresh',
      desc: '',
      args: [],
    );
  }

  /// `释放刷新`
  String get release_ready {
    return Intl.message(
      '释放刷新',
      name: 'release_ready',
      desc: '',
      args: [],
    );
  }

  /// `加载中...`
  String get loading {
    return Intl.message(
      '加载中...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `成功`
  String get success {
    return Intl.message(
      '成功',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `最后更新时间`
  String get last_update_time {
    return Intl.message(
      '最后更新时间',
      name: 'last_update_time',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
