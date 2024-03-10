import 'package:drift/drift.dart';
import 'package:easy_mygo/global/global.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../database.dart';
import '../../entity/novel/novel_info.dart';

part 'novel_dao.g.dart';

@DriftAccessor(tables: [NovelInfo])
class NovelDao extends DatabaseAccessor<NovelDB> with _$NovelDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  NovelDao(super.db);
}
