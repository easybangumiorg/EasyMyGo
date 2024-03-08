import 'dart:ffi';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:easy_mygo/db/manga/manga_db.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path/path.dart' as p;
import 'package:logger/logger.dart';

import '../db/novel/novel_db.dart';

part 'global.g.dart';
part 'global.freezed.dart';

@freezed
class VersionInfo with _$VersionInfo {
  factory VersionInfo({
    required String versionName,
    required int versionCode,
  }) = _VersionInfo;

  factory VersionInfo.fromJson(Map<String, Object?> json) =>
      _$VersionInfoFromJson(json);
}

class GlobalState {
  // 全局 ctx
  BuildContext ctx;

  // 版本信息
  VersionInfo versionInfo;

  // kv 数据存储
  SharedPreferences preferences;

  // 漫画数据库
  MangaDB mangaDB;

  // 小说数据库
  NovelDB novelDB;

  // 日志
  Logger logger;

  GlobalState({
    required this.ctx,
    required this.versionInfo,
    required this.preferences,
    required this.mangaDB,
    required this.novelDB,
    required this.logger,
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
    final preferences = await SharedPreferences.getInstance();

    final dbFolder = await getApplicationDocumentsDirectory();
    final mangaDBFile = File(p.join(dbFolder.path, "Manga.sql"));
    final mangaDB = MangaDB(NativeDatabase(mangaDBFile));

    final novelDBFile = File(p.join(dbFolder.path, "Novel.sql"));
    final novelDB = NovelDB(NativeDatabase(novelDBFile));

    const versionName = String.fromEnvironment("VERSION_NAME", defaultValue: "dev");
    const versionCodeS = String.fromEnvironment("VERSION_CODE", defaultValue: "0");
    final versionCode = int.tryParse(versionCodeS) ?? 0;
    final versionInfo = VersionInfo(versionName: versionName, versionCode: versionCode);

    final logger = Logger();

    final sta = GlobalState(
      // ignore: use_build_context_synchronously
      ctx: context,
      versionInfo: versionInfo,
      preferences: preferences,
      mangaDB: mangaDB,
      novelDB: novelDB,
      logger: logger,
    );

    await migrate(sta);
    state = sta;
  }

  // 数据更新，闪屏页调用
  Future<void> migrate(GlobalState sta) async {
    final preferences = await SharedPreferences.getInstance();
    final cur = preferences.getInt("last_version") ?? sta.versionInfo.versionCode;
    // 数据迁移代码
    preferences.setInt("last_version", sta.versionInfo.versionCode);
  }
}

extension GlobalExt on AutoDisposeNotifier {
  bool get isInit => ref.watch(globalProvider) != null;

  GlobalState? get global => ref.watch(globalProvider);
  GlobalState get G => global!;

  Logger get log => G.logger;

}

extension GlobalRefExt on Ref {

  bool get isInit => watch(globalProvider) != null;

  GlobalState? get global => watch(globalProvider);
  GlobalState get G => global!;

  Logger get log => G.logger;
}

extension WidgetRefExt on WidgetRef {
  bool get isInit => watch(globalProvider) != null;

  GlobalState? get global => watch(globalProvider);
  GlobalState get G => global!;

  Logger get log => G.logger;
}
