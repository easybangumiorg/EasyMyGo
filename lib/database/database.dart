import 'dart:io';

import 'package:drift/native.dart';
import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/database/dao/manga/manga_dao.dart';
import 'package:easy_mygo/database/dao/novel/novel_dao.dart';
import 'package:easy_mygo/database/db/manga/manga_db.dart';
import 'package:easy_mygo/database/db/novel/novel_db.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database.g.dart';

sealed class DatabaseState {
  const DatabaseState();
}

class DatabaseStateLoading extends DatabaseState {
  static DatabaseStateLoading current = DatabaseStateLoading();
}

class DatabaseStateError extends DatabaseState {
  final String message;

  const DatabaseStateError(this.message);
}

class DatabaseStateReady extends DatabaseState {
  // 漫画数据库
  final MangaDB mangaDB;

  // 小说数据库
  final NovelDB novelDB;

  DatabaseStateReady({required this.mangaDB, required this.novelDB});

  MangaDao get mangaDao => mangaDB.mangaDao;

  NovelDao get novelDao => novelDB.novelDao;
}

class DB {
  static DatabaseStateReady? _current;

  static DatabaseStateReady get current => _current!;
}

@Riverpod(keepAlive: true)
class DatabaseController extends _$DatabaseController {
  static DatabaseController of(WidgetRef ref) =>
      ref.watch(databaseControllerPod.notifier);

  static DatabaseState watch(WidgetRef ref) => ref.watch(databaseControllerPod);

  late Future<void> _initJob;

  DatabaseController() {
    _initJob = Future.microtask(() {
      _innerInit();
    });
  }

  @override
  DatabaseState build() {
    return DatabaseStateLoading.current;
  }

  Future<void> retry() async {
    await _initJob;
    await _innerInit();
  }

  Future<void> _innerInit() async {
    try {
      state = DatabaseStateLoading.current;
      final applicationDir = await EasyConstant.applicationPath;

      final mangaFile = File(join(applicationDir.path, "manga.db"));
      final mangaDB = MangaDB(NativeDatabase(mangaFile));
      final novelFile = File(join(applicationDir.path, "novel.db"));
      final novelDB = NovelDB(NativeDatabase(novelFile));

      final sta = DatabaseStateReady(mangaDB: mangaDB, novelDB: novelDB);
      DB._current = sta;
      state = sta;
    } catch (e) {
      final sta = DatabaseStateError(e.toString());
      DB._current = null;
      state = sta;
    }
  }
}
