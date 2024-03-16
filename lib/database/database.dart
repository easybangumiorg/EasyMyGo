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

final database = Provider((ref) => DatabaseState(
    mangaDB: MangaDB.createLazy(),
    novelDB: NovelDB.createLazy()));

@DriftDatabase(tables: [MangaInfo], daos: [MangaDao])
class MangaDB extends _$MangaDB {
  static MangaDB createLazy() {
    return MangaDB(LazyDatabase(() async {
      final dbFolder = await getApplicationSupportDirectory();
      final mangaDBFile = File(join(dbFolder.path, "Manga.sql"));
      return NativeDatabase(mangaDBFile);
    }));
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        // 版本更新
      });

  MangaDB(super.database);
}

@DriftDatabase(tables: [NovelInfo], daos: [NovelDao])
class NovelDB extends _$NovelDB {
  static NovelDB createLazy() {
    return NovelDB(LazyDatabase(() async {
      final dbFolder = await getApplicationSupportDirectory();
      final novelDBFile = File(join(dbFolder.path, "Novel.sql"));
      return NativeDatabase(novelDBFile);
    }));
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        // 版本更新
      });

  NovelDB(super.database);
}
