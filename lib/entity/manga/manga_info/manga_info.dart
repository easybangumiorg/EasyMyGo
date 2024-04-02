
import 'dart:collection';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:easy_mygo/database/db/manga/manga_db.dart';
import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_enum.dart';
import 'package:easy_mygo/entity/manga/manga_picture/manga_picture.dart';
import 'package:flutter/foundation.dart';


/// 一部漫画在整个软件中的聚合，包括以下数据：
/// 来自插件：
/// MangaCover - 漫画封面，一般在首页或者搜索页展示
/// MangaDetailed - 漫画详细信息，一般在漫画详情页展示
///
/// 来自 纯纯 Mygo 本身的数据库：
/// 历史记录数据 - 包括记录时间、观看的位置（章节图片）、进度等
/// 加入书架的记录 - 包括加入时间、置顶时间、所属分类、自定义排序的字段
///
/// 来自业务需要
/// 本地的一些针对单部漫画的配置和缓存比如章节排序方式、章节列表缓存等

@DataClassName("MangaInfo")
class MangaTable extends Table {
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

  IntColumn get updateStrategy => intEnum<MangaUpdateStrategy>()
      .named("update_strategy")
      .withDefault(const Constant(0))();

  BoolColumn get isUpdate =>
      boolean().named("is_update").withDefault(const Constant(false))();

  IntColumn get status => intEnum<MangaStatus>().named("status")();


  // 本地存的一些配置
  IntColumn get lastUpdateTime =>
      integer().named("last_update_time").withDefault(const Constant(0))();

  TextColumn get sourceName =>
      text().named("source_name").withDefault(const Constant(""))();

  BoolColumn get isReversal =>
      boolean().named("is_reversal").withDefault(const Constant(false))();

  TextColumn get sortKey =>
      text().named("sort_key").withDefault(const Constant(""))();

  // 章节列表，存的 Json 数据，只做 temp 可能不是最新
  TextColumn get chapterListJson =>
      text().named("chapter_list_json").withDefault(const Constant(""))();

  // 图片 Map，存的 Json 数据， key 为 Chapter id，value 为 List<MangaPicture>
  TextColumn get pictureMapJson =>
      text().named("picture_map_json").withDefault(const Constant(""))();

  // History
  // 最后的历史数据添加时间
  IntColumn get lastHistoryTime =>
      integer().named("last_history_time").withDefault(const Constant(0))();

  // 最后观看章节 Id
  TextColumn get lastReadChapterId =>
      text().named("last_read_chapter_id").withDefault(const Constant(""))();

  // 最后观看章节名称
  TextColumn get lastReadChapterLabel =>
      text().named("last_read_chapter_label").withDefault(const Constant(""))();

  // 最后观看时总章节数
  IntColumn get lastReadChapterCount =>
      integer().named("last_read_chapter_count").withDefault(const Constant(0))();

  // 最后观看章节的总图片数
  IntColumn get lastReadImageIndex =>
      integer().named("last_read_page_index").withDefault(const Constant(0))();

  // 最后观看的所在章节的所在图片下标
  IntColumn get lastReadChapterImageCount => integer()
      .named("last_read_chapter_page_count")
      .withDefault(const Constant(0))();

  // Star
  // 当前漫画的标签 id "1， 2， 3"
  TextColumn get tags => text().named("tags_id").withDefault(const Constant(""))();

  // 当前漫画收藏的时间，为 0 则没有收藏
  IntColumn get starTime =>
      integer().named("star_time").withDefault(const Constant(0))();

  // 置顶时间，为 0 则没有设置置顶
  IntColumn get pinTime =>
      integer().named("pin_time").withDefault(const Constant(0))();

  // 自定义排序状态或者置顶状态的顺序
  IntColumn get customOrder =>
      integer().named("custom_order").withDefault(const Constant(0))();

  // 书签 json
  TextColumn get markJson =>
      text().named("markJson").withDefault(const Constant(""))();

  // 本地存的一些配置
  TextColumn get ext =>
      text().named("ext").withDefault(const Constant(""))();

  @override
  Set<Column> get primaryKey => {source, id};

  @override
  String get tableName => "MangaInfo";
}

extension MangaInfoExt on MangaInfo {
  static final _listChapterValues = Expando<List<MangaChapter>>();
  List<MangaChapter> get chapterList {
    final value = _listChapterValues[this];
    if (value == null) {
      if (chapterListJson.isEmpty) {
        _listChapterValues[this] = null;
        return List.empty();
      }
      try {
        Iterable l = json.decode(chapterListJson);
        List<MangaChapter> n = List<MangaChapter>.from(l.map((e) => MangaChapter.fromJson(e)));
        _listChapterValues[this] = n;
        return n;
      } on FormatException catch (e) {
        _listChapterValues[this] = null;
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

  static final _mapPicture = Expando<Map<String, List<MangaPicture>>>();
  Map<String, List<MangaPicture>> get pictureMap {
    final value = _mapPicture[this];
    if(value == null){
      if (pictureMapJson.isEmpty) {
        _mapPicture[this] = null;
        return {};
      }
      try {
        Map<String, dynamic> m = json.decode(pictureMapJson);
        HashMap<String, List<MangaPicture>> res = HashMap();
        final keys = m.keys;
        for(String key in keys){
          final Iterable value = m[key];
          final list = value.map((e) => MangaPicture.fromJson(json.decode(e))).toList(growable: false);
          res[key] = list;
        }

        _mapPicture[this] = res;
        return res;
      } on FormatException catch (e) {
        _listChapterValues[this] = null;
        if (kDebugMode) {
          print(e);
        }
      }
      return {};
    }
    return value;
  }

}
