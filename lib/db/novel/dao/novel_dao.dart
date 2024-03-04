import 'package:drift/drift.dart';
import 'package:easy_book/global/global.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/novel.dart';
import '../novel_db.dart';

part 'novel_dao.g.dart';

@Riverpod(keepAlive: true)
NovelDao novelDao(NovelDaoRef ref) => ref.G.novelDB.novelDao;

@DriftAccessor(tables: [NovelInfo])
class NovelDao extends DatabaseAccessor<NovelDB> with _$NovelDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  NovelDao(super.db);
}
