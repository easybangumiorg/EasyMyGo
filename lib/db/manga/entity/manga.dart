import 'dart:convert';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:easy_mygo/db/db.dart';
import 'package:flutter/foundation.dart';

import '../manga_db.dart';
import 'chapter.dart';

@DataClassName("Manga")
class MangaInfo extends Table {
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

  IntColumn get updateStrategy => intEnum<UpdateStrategy>()
      .named("update_strategy")
      .withDefault(const Constant(0))();

  BoolColumn get isUpdate =>
      boolean().named("is_update").withDefault(const Constant(false))();

  IntColumn get status => intEnum<Status>().named("status")();

  IntColumn get lastUpdateTime =>
      integer().named("last_update_time").withDefault(const Constant(0))();

  TextColumn get sourceName =>
      text().named("source_name").withDefault(const Constant(""))();

  BoolColumn get isReversal =>
      boolean().named("is_reversal").withDefault(const Constant(false))();

  TextColumn get sortKey =>
      text().named("sort_key").withDefault(const Constant(""))();

  // 章节列表，存的 Json 数据
  TextColumn get chapterListJson =>
      text().named("chapter_list_json").withDefault(const Constant(""))();

  // History
  // 最后的历史数据添加时间
  IntColumn get lastHistoryTime =>
      integer().named("last_history_time").withDefault(const Constant(0))();

  // 最后观看章节下标
  IntColumn get lastChapterIndex =>
      integer().named("last_chapter_index").withDefault(const Constant(0))();

  // 最后观看章节名称
  TextColumn get lastChapterLabel =>
      text().named("last_chapter_label").withDefault(const Constant(""))();

  // 最后观看时总章节数
  IntColumn get lastChapterCount =>
      integer().named("last_chapter_count").withDefault(const Constant(0))();

  // 最后观看章节的总图片数
  IntColumn get lastImageIndex =>
      integer().named("last_image_index").withDefault(const Constant(0))();

  // 最后观看的所在章节的所在图片下标
  IntColumn get lastChapterImageCount => integer()
      .named("last_chapter_image_count")
      .withDefault(const Constant(0))();

  // Star
  // 当前漫画的标签 id "1， 2， 3"
  TextColumn get tags => text().named("tags").withDefault(const Constant(""))();

  // 当前漫画收藏的时间，为 0 则没有收藏
  IntColumn get starTime =>
      integer().named("star_time").withDefault(const Constant(0))();

  // 置顶时间，为 0 则没有设置置顶
  IntColumn get pinTime =>
      integer().named("pin_time").withDefault(const Constant(0))();

  // 自定义排序状态或者置顶状态的顺序
  IntColumn get customOrder =>
      integer().named("custom_order").withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {source, id};

  @override
  String get tableName => "Manga";
}

extension MangaExt on Manga {
  static final _listChapterValues = Expando<List<Chapter>>();
  List<Chapter> get chapterList {
    final value = _listChapterValues[this];
    if (value == null) {
      if (chapterListJson.isEmpty) {
        _listChapterValues[this] = null;
        return List.empty();
      }
      try {
        Iterable l = json.decode(chapterListJson);
        List<Chapter> n = List<Chapter>.from(l.map((e) => Chapter.fromJson(e)));
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
}
