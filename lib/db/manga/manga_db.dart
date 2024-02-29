import 'package:drift/drift.dart';
import 'package:easy_book/db/manga/dao/manga_dao.dart';
import 'package:easy_book/db/manga/entity/manga.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../db.dart';

part 'manga_db.g.dart';

@Riverpod(keepAlive: true)
MangaDB mangaDB(MangaDBRef ref) => MangaDB();

@DriftDatabase(tables: [MangaInfo], daos: [MangaDao])
class MangaDB extends _$MangaDB {
  // we tell the database where to store the data with this constructor
  MangaDB() : super(openConnection("Manga.sqlite"));

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;


  @override
  MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // 版本更新
      }
    );
}
