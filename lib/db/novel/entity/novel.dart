import 'package:drift/drift.dart';

@DataClassName("Novel")
class NovelInfo extends Table {
  // 源 key
  TextColumn get source => text().named("source")();

  // 漫画 id，和 source 联合主键，插件需要自己确保唯一
  TextColumn get id => text().named("id")();
}
