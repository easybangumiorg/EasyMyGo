// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_db.dart';

// ignore_for_file: type=lint
abstract class _$NovelDB extends GeneratedDatabase {
  _$NovelDB(QueryExecutor e) : super(e);
  late final NovelDao novelDao = NovelDao(this as NovelDB);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
}
