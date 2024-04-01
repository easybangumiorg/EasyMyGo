import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:easy_mygo/database/dao/novel/novel_dao.dart';
import 'package:easy_mygo/entity/novel/novel_info/novel_info.dart';
import 'package:easy_mygo/entity/novel/novel_enum.dart';

part 'novel_db.g.dart';

@DriftDatabase(tables: [NovelTable], daos: [NovelDao])
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
