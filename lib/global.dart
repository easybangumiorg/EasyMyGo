import 'package:easy_book/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Created by heyanlin on 2023/10/11.


class Global {
  static BuildContext? get context =>
      Routes.router.routeInformationParser.configuration.navigatorKey.currentContext;

  static BuildContext requireContext() {
    return context!;
  }

  /// 获取 l10n
  static AppLocalizations get S => AppLocalizations.of(requireContext());
}
