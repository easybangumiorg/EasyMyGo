import 'package:drift/drift.dart';
import 'package:easy_book/db/manga/entity/manga.dart';

import '../drift.dart';

part 'manga_db.g.dart';

@DriftDatabase(tables: [MangaInfo])
class MangaDB extends _$MangaDB {
  // we tell the database where to store the data with this constructor
  MangaDB() : super(openConnection("Manga.sqlite"));

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}
