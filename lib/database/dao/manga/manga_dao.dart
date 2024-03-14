import 'package:drift/drift.dart';

import '../../database.dart';
import '../../entity/manga/manga_info.dart';



part 'manga_dao.g.dart';


@DriftAccessor(tables: [MangaInfo])
class MangaDao extends DatabaseAccessor<MangaDB> with _$MangaDaoMixin {
  // Rthis constructor is required so that the main database can create an instance
  // of this object.
  MangaDao(super.db);

  Future<List<Manga>> selectAll() async {
    return await select(mangaInfo).get();
  }

  Stream<List<Manga>> watchAll() {
    return select(mangaInfo).watch();
  }

  Stream<List<Manga>> watchStar() {
    return (select(mangaInfo)
          ..where((tbl) => tbl.starTime.isBiggerThan(const Constant(0))))
        .watch();
  }

  Stream<List<Manga>> watchHistory() {
    return (select(mangaInfo)
          ..where((tbl) => tbl.lastHistoryTime.isBiggerThan(const Constant(0))))
        .watch();
  }
}
