import 'dart:io';

import 'package:drift/native.dart';
import 'package:easy_book/db/manga/manga_db.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path/path.dart' as p;

import '../db/novel/novel_db.dart';

part 'global.g.dart';

class GlobalState {
  // 全局 ctx
  BuildContext ctx;

  // 包信息
  PackageInfo packageInfo;

  // 国际化
  AppLocalizations l10n;

  // kv 数据存储
  SharedPreferences preferences;

  // 漫画数据库
  MangaDB mangaDB;

  // 小说数据库
  NovelDB novelDB;

  GlobalState({
    required this.ctx,
    required this.packageInfo,
    required this.l10n,
    required this.preferences,
    required this.mangaDB,
    required this.novelDB,
  });
}

@Riverpod(keepAlive: true)
class Global extends _$Global {
  @override
  GlobalState? build() {
    return null;
  }

  // 初始化，闪屏页调用
  // ignore: avoid_build_context_in_providers
  Future<void> init(BuildContext context) async {
    final i10n = AppLocalizations.of(context);
    final preferences = await SharedPreferences.getInstance();

    final dbFolder = await getApplicationDocumentsDirectory();
    final mangaDBFile = File(p.join(dbFolder.path, "Manga.sql"));
    final mangaDB = MangaDB(NativeDatabase(mangaDBFile));

    final novelDBFile = File(p.join(dbFolder.path, "Novel.sql"));
    final novelDB = NovelDB(NativeDatabase(novelDBFile));
    final packageInfo = await PackageInfo.fromPlatform();

    final sta = GlobalState(
      // ignore: use_build_context_synchronously
      ctx: context,
      packageInfo: packageInfo,
      l10n: i10n,
      preferences: preferences,
      mangaDB: mangaDB,
      novelDB: novelDB,
    );

    await migrate(sta);
    state = sta;
  }

  static const int dataVersion = 0;

  // 数据更新，闪屏页调用
  Future<void> migrate(GlobalState sta) async {
    final preferences = await SharedPreferences.getInstance();
    final cur = preferences.getInt("last_version") ?? dataVersion;
    // 数据迁移代码
    preferences.setInt("last_version", dataVersion);
  }
}

extension GlobalExt on AutoDisposeNotifier {
  GlobalState get global => ref.watch(globalProvider)!;
}

extension GlobalRefExt on Ref {
  GlobalState get global => watch(globalProvider)!;
}
