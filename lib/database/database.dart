import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path/path.dart';

import 'dao/manga/manga_dao.dart';
import 'dao/novel/novel_dao.dart';
import 'entity/manga/manga_info.dart';
import 'entity/novel/novel_info.dart';

part 'database.g.dart';

enum UpdateStrategy { always, onlyStrict, never }

enum Status { unknown, ongoing, completed }


class DatabaseState {
  // 漫画数据库
  MangaDB mangaDB;

  // 小说数据库
  NovelDB novelDB;

  DatabaseState({
    required this.mangaDB,
    required this.novelDB,
  });

  MangaDao get manga {
    return mangaDB.mangaDao;
  }

  NovelDao get novel {
    return novelDB.novelDao;
  }
}



@Riverpod(keepAlive: true)
class Database extends _$Database {

  static DatabaseState? _current;

  static DatabaseState get current {
    assert(_current != null,
        'No instance of DB was loaded. Try to initialize DB.');
    return _current!;
  }

  @override
  DatabaseState? build() {
    return null;
  }

  Future<void> init() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final mangaDBFile = File(join(dbFolder.path, "Manga.sql"));
    final mangaDB = MangaDB(NativeDatabase(mangaDBFile));

    final novelDBFile = File(join(dbFolder.path, "Novel.sql"));
    final novelDB = NovelDB(NativeDatabase(novelDBFile));

    final sta = DatabaseState(mangaDB: mangaDB, novelDB: novelDB);
    _current = sta;
    state = sta;
  }


}

@DriftDatabase(tables: [MangaInfo], daos: [MangaDao])
class MangaDB extends _$MangaDB {
  // we tell the database where to store the data with this constructor

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
    return m.createAll();
  }, onUpgrade: (Migrator m, int from, int to) async {
    // 版本更新
  });

  MangaDB(NativeDatabase super.database);

}

@DriftDatabase(tables: [NovelInfo], daos: [NovelDao])
class NovelDB extends _$NovelDB {
  // we tell the database where to store the data with this constructor

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
    return m.createAll();
  }, onUpgrade: (Migrator m, int from, int to) async {
    // 版本更新
  });

  NovelDB(NativeDatabase super.database);

}

