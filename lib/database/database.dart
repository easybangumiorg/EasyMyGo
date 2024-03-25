
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:easy_mygo/c.dart' as C;
import 'package:easy_mygo/utils/riverpod/mutable_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';

import 'db/dao/manga_dao.dart';
import 'db/manga/manga_db.dart';


final dbPod = Provider((ref) => DB._(ref));

sealed class DatabaseState {
  const DatabaseState();
}

class  DatabaseStateLoading extends DatabaseState {
  static DatabaseStateLoading current = DatabaseStateLoading();
}

class DatabaseStateError extends DatabaseState {
  final String message;
  const DatabaseStateError(this.message);
}

class DatabaseStateReady extends DatabaseState {
  // 漫画数据库
  final MangaDB mangaDB;
  DatabaseStateReady({required this.mangaDB});

  MangaDao get mangaDao => mangaDB.mangaDao;
}


class DB {

  static DatabaseStateReady? _current;
  static DatabaseStateReady get current => _current!;

  final ProviderRef _ref;
  late Future<void> _initJob;

  final state = mutableNotifier<DatabaseState>(DatabaseStateLoading.current);

  DB._(this._ref) {
    _initJob = _init();
  }

  void retry() async {
    await _initJob;
    _initJob = _init();
  }

  Future<void> _init() async {
    try {
      state.update(_ref, (p0) => DatabaseStateLoading.current);
      final applicationDir = await C.Constant.applicationPath;
      final mangaFile = File(join(applicationDir.path, "manga.db"));
      final mangaDB = MangaDB(NativeDatabase(mangaFile));
      final sta = DatabaseStateReady(mangaDB: mangaDB);
      _current = sta;
      state.update(_ref, (p0) => sta);
    } catch (e) {
      final sta = DatabaseStateError(e.toString());
      _current = null;
      state.update(_ref, (p0) => sta);
    }
  }


}