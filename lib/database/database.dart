
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/utils/riverpod/mutable_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';

import 'db/dao/manga_dao.dart';
import 'db/manga/manga_db.dart';


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


// 快速访问
class DB {
  static DatabaseStateReady? _current;
  static DatabaseStateReady get current => _current!;
}

// 数据库管理
final databasePod = Provider((ref) => DatabaseController._(ref));
class DatabaseController {

  static DatabaseController? _instance;
  static DatabaseController get instance => _instance!;

  final ProviderRef _ref;
  late Future<void> _initJob;


  DatabaseController._(this._ref){
    _initJob = _init(_ref);
    _instance = this;

    Future.microtask((){
      _init(_ref);
    });
  }

  final state = mutableNotifier<DatabaseState>(DatabaseStateLoading.current);

  void retry() async {
    await _initJob;
    _initJob = _init(_ref);
  }

  Future<void> _init(Ref ref) async {
    try {
      state.update(ref, (p0) => DatabaseStateLoading.current);
      final applicationDir = await EasyConstant.applicationPath;
      final mangaFile = File(join(applicationDir.path, "manga.db"));
      final mangaDB = MangaDB(NativeDatabase(mangaFile));
      final sta = DatabaseStateReady(mangaDB: mangaDB);
      DB._current = sta;
      state.update(ref, (p0) => sta);
    } catch (e) {
      final sta = DatabaseStateError(e.toString());
      DB._current = null;
      state.update(ref, (p0) => sta);
    }
  }

}