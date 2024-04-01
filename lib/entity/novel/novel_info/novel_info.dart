import 'package:drift/drift.dart';
import 'package:easy_mygo/entity/novel/novel_enum.dart';

/// 一部小说在整个软件中的聚合，包括以下数据：
/// 来自插件：
/// NovelCover - 小说封面，一般在首页或者搜索页展示
/// NovelDetailed - 小说详细信息，一般在详情页展示
///
/// 来自 纯纯 Mygo 本身的数据库：
/// 历史记录数据 - 包括记录时间、观看的位置、进度等
/// 加入书架的记录 - 包括加入时间、置顶时间、所属分类、自定义排序的字段
///
/// 来自业务需要
/// 本地的一些针对一本小说的配置和缓存比如章节排序方式、章节列表缓存等

@DataClassName("NovelInfo")
class NovelTable extends Table {
  // 源 key
  TextColumn get source => text().named("source")();

  // 漫画 id，和 source 联合主键，插件需要自己确保唯一
  TextColumn get id => text().named("id")();

  // Cover
  TextColumn get label =>
      text().named("label").withDefault(const Constant(""))();

  TextColumn get cover =>
      text().named("cover").withDefault(const Constant(""))();

  TextColumn get intro =>
      text().named("intro").withDefault(const Constant(""))();

  TextColumn get jumpUrl =>
      text().named("jump_url").withDefault(const Constant(""))();

  // Detailed
  BoolColumn get isDetailedLoad =>
      boolean().named("is_detailed_load").withDefault(const Constant(false))();

  TextColumn get genre =>
      text().named("genre").withDefault(const Constant(""))();

  TextColumn get description =>
      text().named("description").withDefault(const Constant(""))();

  IntColumn get updateStrategy => intEnum<NovelUpdateStrategy>()
      .named("update_strategy")
      .withDefault(const Constant(0))();

  BoolColumn get isUpdate =>
      boolean().named("is_update").withDefault(const Constant(false))();

  IntColumn get status => intEnum<NovelStatus>().named("status")();

  // 本地存的一些配置
  IntColumn get lastUpdateTime =>
      integer().named("last_update_time").withDefault(const Constant(0))();

  TextColumn get sourceName =>
      text().named("source_name").withDefault(const Constant(""))();

  BoolColumn get isReversal =>
      boolean().named("is_reversal").withDefault(const Constant(false))();

  TextColumn get sortKey =>
      text().named("sort_key").withDefault(const Constant(""))();

  // 部列表，存的 Json 数据，只做 temp 可能不是最新
  // 对于文库版，可以是第一部第二部（本）
  // 对于 web 版，则可以是第一卷（章）第二卷（章）
  // 最终会在详情页中展示，而里面再分的 NovelChapter 则需要进入到阅读器展示
  TextColumn get seasonListJson =>
      text().named("season_list_json").withDefault(const Constant(""))();

  // History
  // 最后的历史数据添加时间
  IntColumn get lastHistoryTime =>
      integer().named("last_history_time").withDefault(const Constant(0))();

  // 最后观看的 部 Id
  TextColumn get lastReadSeasonId =>
      text().named("last_read_season_id").withDefault(const Constant(""))();

  // 最后观看 部名称
  TextColumn get lastReadSeasonLabel =>
      text().named("last_read_season_label").withDefault(const Constant(""))();

  // 最后观看的 部 下标
  IntColumn get lastReadSeasonIndex => integer()
      .named("last_read_season_index")
      .withDefault(const Constant(0))();

  // 最后观看的 章节 Id
  TextColumn get lastReadChapterId =>
      text().named("last_read_chapter_id").withDefault(const Constant(""))();

  // 最后观看的 章节名称
  TextColumn get lastReadChapterLabel =>
      text().named("last_read_chapter_label").withDefault(const Constant(""))();

  // 最后观看的部的阅读进度
  // 单位 %
  IntColumn get lastReadSeasonProcess => integer()
      .named("last_read_season_process")
      .withDefault(const Constant(0))();

  // 最后观看位置的书签数据结构
  // 扁平化 Map<String, String>，和阅读器组件的书签可能不一致
  IntColumn get lastReadBookMarkJson => integer()
      .named("last_read_book_mark_json")
      .withDefault(const Constant(0))();

  // Star
  // 当前漫画的标签 id "1， 2， 3"
  TextColumn get tags =>
      text().named("tags_id").withDefault(const Constant(""))();

  // 当前漫画收藏的时间，为 0 则没有收藏
  IntColumn get starTime =>
      integer().named("star_time").withDefault(const Constant(0))();

  // 置顶时间，为 0 则没有设置置顶
  IntColumn get pinTime =>
      integer().named("pin_time").withDefault(const Constant(0))();

  // 自定义排序状态或者置顶状态的顺序
  IntColumn get customOrder =>
      integer().named("custom_order").withDefault(const Constant(0))();

  // 更多配置，源可以自由使用
  // 扁平化 map<String, String>
  TextColumn get ext => text().named("ext").withDefault(const Constant(""))();

  @override
  Set<Column> get primaryKey => {source, id};

  @override
  String get tableName => "NovelInfo";
}
