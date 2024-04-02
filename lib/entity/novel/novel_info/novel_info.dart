import 'dart:collection';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:easy_mygo/database/db/novel/novel_db.dart';
import 'package:easy_mygo/entity/novel/novel_chapter/novel_chapter.dart';
import 'package:easy_mygo/entity/novel/novel_enum.dart';
import 'package:easy_mygo/entity/novel/novel_volume/novel_volume.dart';
import 'package:flutter/foundation.dart';

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

  // 卷列表，存的 Json 数据，只做 temp 可能不是最新
  // 对于文库版，可以是第一本第二本
  // 对于 web 版，则可以是第一卷（章）第二卷（章）
  // 最终会在详情页中展示，而里面再分的 NovelChapter 则需要进入到阅读器展示
  TextColumn get volumeListJson =>
      text().named("volume_list_json").withDefault(const Constant(""))();

  // 章节 map，存的 Json 数据，其中 key 是 卷 id
  TextColumn get chapterMapJson =>
      text().named("chapter_map_json").withDefault(const Constant(""))();
  // History
  // 最后的历史数据添加时间
  IntColumn get lastHistoryTime =>
      integer().named("last_history_time").withDefault(const Constant(0))();

  // 最后观看的 卷 Id
  TextColumn get lastReadVolumeId =>
      text().named("last_read_volume_id").withDefault(const Constant(""))();

  // 最后观看 卷名称
  TextColumn get lastReadVolumeLabel =>
      text().named("last_read_volume_label").withDefault(const Constant(""))();

  // 最后观看的 卷 下标
  IntColumn get lastReadVolumeIndex => integer()
      .named("last_read_volume_index")
      .withDefault(const Constant(0))();

  // 最后观看的 章节 Id
  TextColumn get lastReadChapterId =>
      text().named("last_read_chapter_id").withDefault(const Constant(""))();

  // 最后观看的 章节名称
  TextColumn get lastReadChapterLabel =>
      text().named("last_read_chapter_label").withDefault(const Constant(""))();

  // 最后观看的卷的阅读进度
  // 单位 %
  IntColumn get lastReadVolumeProcess => integer()
      .named("last_read_volume_process")
      .withDefault(const Constant(0))();

  // 最后观看位置的书签数据结构
  // 扁平化 Map<String, String>，和阅读器组件的书签可能不一致
  TextColumn get lastReadBookMarkJson => text()
      .named("last_read_book_mark_json")
      .withDefault(const Constant(''))();

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

extension NovelInfoExt on NovelInfo {
  static final _listVolumeValues = Expando<List<NovelVolume>>();
  List<NovelVolume> get volumeList {
    final value = _listVolumeValues[this];
    if (value == null) {
      if (volumeListJson.isEmpty) {
        _listVolumeValues[this] = null;
        return List.empty();
      }
      try {
        Iterable l = json.decode(volumeListJson);
        List<NovelVolume> n = List<NovelVolume>.from(l.map((e) => NovelVolume.fromJson(e)));
        _listVolumeValues[this] = n;
        return n;
      } on FormatException catch (e) {
        _listVolumeValues[this] = null;
        if (kDebugMode) {
          print(e);
        }
      }
      return List.empty();
    }
    return value;
  }

  static final _listTagsId = Expando<List<String>>();
  List<String> get tagsIdList {
    final value = _listTagsId[this];
    if (value == null) {
      if (tags.isEmpty) {
        _listTagsId[this] = null;
        return List.empty();
      }
      try {
        Iterable l = tags.split(",");
        List<String> n = List<String>.from(l);
        _listTagsId[this] = n;
        return n ?? List.empty();
      } on FormatException catch (e) {
        _listTagsId[this] = null;
        if (kDebugMode) {
          print(e);
        }
      }
      return List.empty();
    }
    return value;
  }

  static final _mapChapter = Expando<Map<String, List<NovelChapter>>>();
  Map<String, List<NovelChapter>> get pictureMap {
    final value = _mapChapter[this];
    if(value == null){
      if (chapterMapJson.isEmpty) {
        _mapChapter[this] = null;
        return {};
      }
      try {
        Map<String, dynamic> m = json.decode(chapterMapJson);
        HashMap<String, List<NovelChapter>> res = HashMap();
        final keys = m.keys;
        for(String key in keys){
          final Iterable value = m[key];
          final list = value.map((e) => NovelChapter.fromJson(json.decode(e))).toList(growable: false);
          res[key] = list;
        }

        _mapChapter[this] = res;
        return res;
      } on FormatException catch (e) {
        _listVolumeValues[this] = null;
        if (kDebugMode) {
          print(e);
        }
      }
      return {};
    }
    return value;
  }

}
