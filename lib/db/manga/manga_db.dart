import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:easy_mygo/db/manga/dao/manga_dao.dart';
import 'package:easy_mygo/db/manga/entity/manga.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../db.dart';

part 'manga_db.g.dart';

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
