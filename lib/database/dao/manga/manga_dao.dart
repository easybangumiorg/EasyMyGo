import 'package:drift/drift.dart';
import 'package:easy_mygo/database/db/manga/manga_db.dart';
import 'package:easy_mygo/entity/manga/manga_info/manga_info.dart';

part 'manga_dao.g.dart';

@DriftAccessor(tables: [MangaTable])
class MangaDao extends DatabaseAccessor<MangaDB> with _$MangaDaoMixin {
  // Rthis constructor is required so that the main database can create an instance
  // of this object.
  MangaDao(super.db);

  Future<List<MangaInfo>> selectAll() async {
    return await select(mangaTable).get();
  }

  Stream<List<MangaInfo>> watchAll() {
    return select(mangaTable).watch();
  }

  Stream<List<MangaInfo>> watchStar() {
    return (select(mangaTable)
      ..where((tbl) => tbl.starTime.isBiggerThan(const Constant(0))))
        .watch();
  }

  Stream<List<MangaInfo>> watchHistory() {
    return (select(mangaTable)
      ..where((tbl) => tbl.lastHistoryTime.isBiggerThan(const Constant(0))))
        .watch();
  }
}
