// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_db.dart';

// ignore_for_file: type=lint
class $NovelTableTable extends NovelTable
    with TableInfo<$NovelTableTable, NovelInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NovelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _coverMeta = const VerificationMeta('cover');
  @override
  late final GeneratedColumn<String> cover = GeneratedColumn<String>(
      'cover', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _introMeta = const VerificationMeta('intro');
  @override
  late final GeneratedColumn<String> intro = GeneratedColumn<String>(
      'intro', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _jumpUrlMeta =
      const VerificationMeta('jumpUrl');
  @override
  late final GeneratedColumn<String> jumpUrl = GeneratedColumn<String>(
      'jump_url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _isDetailedLoadMeta =
      const VerificationMeta('isDetailedLoad');
  @override
  late final GeneratedColumn<bool> isDetailedLoad = GeneratedColumn<bool>(
      'is_detailed_load', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_detailed_load" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _updateStrategyMeta =
      const VerificationMeta('updateStrategy');
  @override
  late final GeneratedColumnWithTypeConverter<NovelUpdateStrategy, int>
      updateStrategy = GeneratedColumn<int>(
              'update_strategy', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<NovelUpdateStrategy>(
              $NovelTableTable.$converterupdateStrategy);
  static const VerificationMeta _isUpdateMeta =
      const VerificationMeta('isUpdate');
  @override
  late final GeneratedColumn<bool> isUpdate = GeneratedColumn<bool>(
      'is_update', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_update" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<NovelStatus, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<NovelStatus>($NovelTableTable.$converterstatus);
  static const VerificationMeta _lastUpdateTimeMeta =
      const VerificationMeta('lastUpdateTime');
  @override
  late final GeneratedColumn<int> lastUpdateTime = GeneratedColumn<int>(
      'last_update_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _sourceNameMeta =
      const VerificationMeta('sourceName');
  @override
  late final GeneratedColumn<String> sourceName = GeneratedColumn<String>(
      'source_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _isReversalMeta =
      const VerificationMeta('isReversal');
  @override
  late final GeneratedColumn<bool> isReversal = GeneratedColumn<bool>(
      'is_reversal', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_reversal" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _sortKeyMeta =
      const VerificationMeta('sortKey');
  @override
  late final GeneratedColumn<String> sortKey = GeneratedColumn<String>(
      'sort_key', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _seasonListJsonMeta =
      const VerificationMeta('seasonListJson');
  @override
  late final GeneratedColumn<String> seasonListJson = GeneratedColumn<String>(
      'season_list_json', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _lastHistoryTimeMeta =
      const VerificationMeta('lastHistoryTime');
  @override
  late final GeneratedColumn<int> lastHistoryTime = GeneratedColumn<int>(
      'last_history_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReadSeasonIdMeta =
      const VerificationMeta('lastReadSeasonId');
  @override
  late final GeneratedColumn<String> lastReadSeasonId = GeneratedColumn<String>(
      'last_read_season_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _lastReadSeasonLabelMeta =
      const VerificationMeta('lastReadSeasonLabel');
  @override
  late final GeneratedColumn<String> lastReadSeasonLabel =
      GeneratedColumn<String>('last_read_season_label', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant(""));
  static const VerificationMeta _lastReadSeasonIndexMeta =
      const VerificationMeta('lastReadSeasonIndex');
  @override
  late final GeneratedColumn<int> lastReadSeasonIndex = GeneratedColumn<int>(
      'last_read_season_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReadChapterIdMeta =
      const VerificationMeta('lastReadChapterId');
  @override
  late final GeneratedColumn<String> lastReadChapterId =
      GeneratedColumn<String>('last_read_chapter_id', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant(""));
  static const VerificationMeta _lastReadChapterLabelMeta =
      const VerificationMeta('lastReadChapterLabel');
  @override
  late final GeneratedColumn<String> lastReadChapterLabel =
      GeneratedColumn<String>('last_read_chapter_label', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant(""));
  static const VerificationMeta _lastReadSeasonProcessMeta =
      const VerificationMeta('lastReadSeasonProcess');
  @override
  late final GeneratedColumn<int> lastReadSeasonProcess = GeneratedColumn<int>(
      'last_read_season_process', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReadBookMarkJsonMeta =
      const VerificationMeta('lastReadBookMarkJson');
  @override
  late final GeneratedColumn<int> lastReadBookMarkJson = GeneratedColumn<int>(
      'last_read_book_mark_json', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _starTimeMeta =
      const VerificationMeta('starTime');
  @override
  late final GeneratedColumn<int> starTime = GeneratedColumn<int>(
      'star_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _pinTimeMeta =
      const VerificationMeta('pinTime');
  @override
  late final GeneratedColumn<int> pinTime = GeneratedColumn<int>(
      'pin_time', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _customOrderMeta =
      const VerificationMeta('customOrder');
  @override
  late final GeneratedColumn<int> customOrder = GeneratedColumn<int>(
      'custom_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _extMeta = const VerificationMeta('ext');
  @override
  late final GeneratedColumn<String> ext = GeneratedColumn<String>(
      'ext', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  @override
  List<GeneratedColumn> get $columns => [
        source,
        id,
        label,
        cover,
        intro,
        jumpUrl,
        isDetailedLoad,
        genre,
        description,
        updateStrategy,
        isUpdate,
        status,
        lastUpdateTime,
        sourceName,
        isReversal,
        sortKey,
        seasonListJson,
        lastHistoryTime,
        lastReadSeasonId,
        lastReadSeasonLabel,
        lastReadSeasonIndex,
        lastReadChapterId,
        lastReadChapterLabel,
        lastReadSeasonProcess,
        lastReadBookMarkJson,
        tags,
        starTime,
        pinTime,
        customOrder,
        ext
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'NovelInfo';
  @override
  VerificationContext validateIntegrity(Insertable<NovelInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('cover')) {
      context.handle(
          _coverMeta, cover.isAcceptableOrUnknown(data['cover']!, _coverMeta));
    }
    if (data.containsKey('intro')) {
      context.handle(
          _introMeta, intro.isAcceptableOrUnknown(data['intro']!, _introMeta));
    }
    if (data.containsKey('jump_url')) {
      context.handle(_jumpUrlMeta,
          jumpUrl.isAcceptableOrUnknown(data['jump_url']!, _jumpUrlMeta));
    }
    if (data.containsKey('is_detailed_load')) {
      context.handle(
          _isDetailedLoadMeta,
          isDetailedLoad.isAcceptableOrUnknown(
              data['is_detailed_load']!, _isDetailedLoadMeta));
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_updateStrategyMeta, const VerificationResult.success());
    if (data.containsKey('is_update')) {
      context.handle(_isUpdateMeta,
          isUpdate.isAcceptableOrUnknown(data['is_update']!, _isUpdateMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('last_update_time')) {
      context.handle(
          _lastUpdateTimeMeta,
          lastUpdateTime.isAcceptableOrUnknown(
              data['last_update_time']!, _lastUpdateTimeMeta));
    }
    if (data.containsKey('source_name')) {
      context.handle(
          _sourceNameMeta,
          sourceName.isAcceptableOrUnknown(
              data['source_name']!, _sourceNameMeta));
    }
    if (data.containsKey('is_reversal')) {
      context.handle(
          _isReversalMeta,
          isReversal.isAcceptableOrUnknown(
              data['is_reversal']!, _isReversalMeta));
    }
    if (data.containsKey('sort_key')) {
      context.handle(_sortKeyMeta,
          sortKey.isAcceptableOrUnknown(data['sort_key']!, _sortKeyMeta));
    }
    if (data.containsKey('season_list_json')) {
      context.handle(
          _seasonListJsonMeta,
          seasonListJson.isAcceptableOrUnknown(
              data['season_list_json']!, _seasonListJsonMeta));
    }
    if (data.containsKey('last_history_time')) {
      context.handle(
          _lastHistoryTimeMeta,
          lastHistoryTime.isAcceptableOrUnknown(
              data['last_history_time']!, _lastHistoryTimeMeta));
    }
    if (data.containsKey('last_read_season_id')) {
      context.handle(
          _lastReadSeasonIdMeta,
          lastReadSeasonId.isAcceptableOrUnknown(
              data['last_read_season_id']!, _lastReadSeasonIdMeta));
    }
    if (data.containsKey('last_read_season_label')) {
      context.handle(
          _lastReadSeasonLabelMeta,
          lastReadSeasonLabel.isAcceptableOrUnknown(
              data['last_read_season_label']!, _lastReadSeasonLabelMeta));
    }
    if (data.containsKey('last_read_season_index')) {
      context.handle(
          _lastReadSeasonIndexMeta,
          lastReadSeasonIndex.isAcceptableOrUnknown(
              data['last_read_season_index']!, _lastReadSeasonIndexMeta));
    }
    if (data.containsKey('last_read_chapter_id')) {
      context.handle(
          _lastReadChapterIdMeta,
          lastReadChapterId.isAcceptableOrUnknown(
              data['last_read_chapter_id']!, _lastReadChapterIdMeta));
    }
    if (data.containsKey('last_read_chapter_label')) {
      context.handle(
          _lastReadChapterLabelMeta,
          lastReadChapterLabel.isAcceptableOrUnknown(
              data['last_read_chapter_label']!, _lastReadChapterLabelMeta));
    }
    if (data.containsKey('last_read_season_process')) {
      context.handle(
          _lastReadSeasonProcessMeta,
          lastReadSeasonProcess.isAcceptableOrUnknown(
              data['last_read_season_process']!, _lastReadSeasonProcessMeta));
    }
    if (data.containsKey('last_read_book_mark_json')) {
      context.handle(
          _lastReadBookMarkJsonMeta,
          lastReadBookMarkJson.isAcceptableOrUnknown(
              data['last_read_book_mark_json']!, _lastReadBookMarkJsonMeta));
    }
    if (data.containsKey('tags_id')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags_id']!, _tagsMeta));
    }
    if (data.containsKey('star_time')) {
      context.handle(_starTimeMeta,
          starTime.isAcceptableOrUnknown(data['star_time']!, _starTimeMeta));
    }
    if (data.containsKey('pin_time')) {
      context.handle(_pinTimeMeta,
          pinTime.isAcceptableOrUnknown(data['pin_time']!, _pinTimeMeta));
    }
    if (data.containsKey('custom_order')) {
      context.handle(
          _customOrderMeta,
          customOrder.isAcceptableOrUnknown(
              data['custom_order']!, _customOrderMeta));
    }
    if (data.containsKey('ext')) {
      context.handle(
          _extMeta, ext.isAcceptableOrUnknown(data['ext']!, _extMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {source, id};
  @override
  NovelInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NovelInfo(
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
      cover: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover'])!,
      intro: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}intro'])!,
      jumpUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jump_url'])!,
      isDetailedLoad: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_detailed_load'])!,
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      updateStrategy: $NovelTableTable.$converterupdateStrategy.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}update_strategy'])!),
      isUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_update'])!,
      status: $NovelTableTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!),
      lastUpdateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_update_time'])!,
      sourceName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_name'])!,
      isReversal: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_reversal'])!,
      sortKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sort_key'])!,
      seasonListJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}season_list_json'])!,
      lastHistoryTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_history_time'])!,
      lastReadSeasonId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_read_season_id'])!,
      lastReadSeasonLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}last_read_season_label'])!,
      lastReadSeasonIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}last_read_season_index'])!,
      lastReadChapterId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_read_chapter_id'])!,
      lastReadChapterLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}last_read_chapter_label'])!,
      lastReadSeasonProcess: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}last_read_season_process'])!,
      lastReadBookMarkJson: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}last_read_book_mark_json'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags_id'])!,
      starTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}star_time'])!,
      pinTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pin_time'])!,
      customOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}custom_order'])!,
      ext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ext'])!,
    );
  }

  @override
  $NovelTableTable createAlias(String alias) {
    return $NovelTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<NovelUpdateStrategy, int, int>
      $converterupdateStrategy =
      const EnumIndexConverter<NovelUpdateStrategy>(NovelUpdateStrategy.values);
  static JsonTypeConverter2<NovelStatus, int, int> $converterstatus =
      const EnumIndexConverter<NovelStatus>(NovelStatus.values);
}

class NovelInfo extends DataClass implements Insertable<NovelInfo> {
  final String source;
  final String id;
  final String label;
  final String cover;
  final String intro;
  final String jumpUrl;
  final bool isDetailedLoad;
  final String genre;
  final String description;
  final NovelUpdateStrategy updateStrategy;
  final bool isUpdate;
  final NovelStatus status;
  final int lastUpdateTime;
  final String sourceName;
  final bool isReversal;
  final String sortKey;
  final String seasonListJson;
  final int lastHistoryTime;
  final String lastReadSeasonId;
  final String lastReadSeasonLabel;
  final int lastReadSeasonIndex;
  final String lastReadChapterId;
  final String lastReadChapterLabel;
  final int lastReadSeasonProcess;
  final int lastReadBookMarkJson;
  final String tags;
  final int starTime;
  final int pinTime;
  final int customOrder;
  final String ext;
  const NovelInfo(
      {required this.source,
      required this.id,
      required this.label,
      required this.cover,
      required this.intro,
      required this.jumpUrl,
      required this.isDetailedLoad,
      required this.genre,
      required this.description,
      required this.updateStrategy,
      required this.isUpdate,
      required this.status,
      required this.lastUpdateTime,
      required this.sourceName,
      required this.isReversal,
      required this.sortKey,
      required this.seasonListJson,
      required this.lastHistoryTime,
      required this.lastReadSeasonId,
      required this.lastReadSeasonLabel,
      required this.lastReadSeasonIndex,
      required this.lastReadChapterId,
      required this.lastReadChapterLabel,
      required this.lastReadSeasonProcess,
      required this.lastReadBookMarkJson,
      required this.tags,
      required this.starTime,
      required this.pinTime,
      required this.customOrder,
      required this.ext});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['source'] = Variable<String>(source);
    map['id'] = Variable<String>(id);
    map['label'] = Variable<String>(label);
    map['cover'] = Variable<String>(cover);
    map['intro'] = Variable<String>(intro);
    map['jump_url'] = Variable<String>(jumpUrl);
    map['is_detailed_load'] = Variable<bool>(isDetailedLoad);
    map['genre'] = Variable<String>(genre);
    map['description'] = Variable<String>(description);
    {
      map['update_strategy'] = Variable<int>(
          $NovelTableTable.$converterupdateStrategy.toSql(updateStrategy));
    }
    map['is_update'] = Variable<bool>(isUpdate);
    {
      map['status'] =
          Variable<int>($NovelTableTable.$converterstatus.toSql(status));
    }
    map['last_update_time'] = Variable<int>(lastUpdateTime);
    map['source_name'] = Variable<String>(sourceName);
    map['is_reversal'] = Variable<bool>(isReversal);
    map['sort_key'] = Variable<String>(sortKey);
    map['season_list_json'] = Variable<String>(seasonListJson);
    map['last_history_time'] = Variable<int>(lastHistoryTime);
    map['last_read_season_id'] = Variable<String>(lastReadSeasonId);
    map['last_read_season_label'] = Variable<String>(lastReadSeasonLabel);
    map['last_read_season_index'] = Variable<int>(lastReadSeasonIndex);
    map['last_read_chapter_id'] = Variable<String>(lastReadChapterId);
    map['last_read_chapter_label'] = Variable<String>(lastReadChapterLabel);
    map['last_read_season_process'] = Variable<int>(lastReadSeasonProcess);
    map['last_read_book_mark_json'] = Variable<int>(lastReadBookMarkJson);
    map['tags_id'] = Variable<String>(tags);
    map['star_time'] = Variable<int>(starTime);
    map['pin_time'] = Variable<int>(pinTime);
    map['custom_order'] = Variable<int>(customOrder);
    map['ext'] = Variable<String>(ext);
    return map;
  }

  NovelTableCompanion toCompanion(bool nullToAbsent) {
    return NovelTableCompanion(
      source: Value(source),
      id: Value(id),
      label: Value(label),
      cover: Value(cover),
      intro: Value(intro),
      jumpUrl: Value(jumpUrl),
      isDetailedLoad: Value(isDetailedLoad),
      genre: Value(genre),
      description: Value(description),
      updateStrategy: Value(updateStrategy),
      isUpdate: Value(isUpdate),
      status: Value(status),
      lastUpdateTime: Value(lastUpdateTime),
      sourceName: Value(sourceName),
      isReversal: Value(isReversal),
      sortKey: Value(sortKey),
      seasonListJson: Value(seasonListJson),
      lastHistoryTime: Value(lastHistoryTime),
      lastReadSeasonId: Value(lastReadSeasonId),
      lastReadSeasonLabel: Value(lastReadSeasonLabel),
      lastReadSeasonIndex: Value(lastReadSeasonIndex),
      lastReadChapterId: Value(lastReadChapterId),
      lastReadChapterLabel: Value(lastReadChapterLabel),
      lastReadSeasonProcess: Value(lastReadSeasonProcess),
      lastReadBookMarkJson: Value(lastReadBookMarkJson),
      tags: Value(tags),
      starTime: Value(starTime),
      pinTime: Value(pinTime),
      customOrder: Value(customOrder),
      ext: Value(ext),
    );
  }

  factory NovelInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NovelInfo(
      source: serializer.fromJson<String>(json['source']),
      id: serializer.fromJson<String>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      cover: serializer.fromJson<String>(json['cover']),
      intro: serializer.fromJson<String>(json['intro']),
      jumpUrl: serializer.fromJson<String>(json['jumpUrl']),
      isDetailedLoad: serializer.fromJson<bool>(json['isDetailedLoad']),
      genre: serializer.fromJson<String>(json['genre']),
      description: serializer.fromJson<String>(json['description']),
      updateStrategy: $NovelTableTable.$converterupdateStrategy
          .fromJson(serializer.fromJson<int>(json['updateStrategy'])),
      isUpdate: serializer.fromJson<bool>(json['isUpdate']),
      status: $NovelTableTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      lastUpdateTime: serializer.fromJson<int>(json['lastUpdateTime']),
      sourceName: serializer.fromJson<String>(json['sourceName']),
      isReversal: serializer.fromJson<bool>(json['isReversal']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
      seasonListJson: serializer.fromJson<String>(json['seasonListJson']),
      lastHistoryTime: serializer.fromJson<int>(json['lastHistoryTime']),
      lastReadSeasonId: serializer.fromJson<String>(json['lastReadSeasonId']),
      lastReadSeasonLabel:
          serializer.fromJson<String>(json['lastReadSeasonLabel']),
      lastReadSeasonIndex:
          serializer.fromJson<int>(json['lastReadSeasonIndex']),
      lastReadChapterId: serializer.fromJson<String>(json['lastReadChapterId']),
      lastReadChapterLabel:
          serializer.fromJson<String>(json['lastReadChapterLabel']),
      lastReadSeasonProcess:
          serializer.fromJson<int>(json['lastReadSeasonProcess']),
      lastReadBookMarkJson:
          serializer.fromJson<int>(json['lastReadBookMarkJson']),
      tags: serializer.fromJson<String>(json['tags']),
      starTime: serializer.fromJson<int>(json['starTime']),
      pinTime: serializer.fromJson<int>(json['pinTime']),
      customOrder: serializer.fromJson<int>(json['customOrder']),
      ext: serializer.fromJson<String>(json['ext']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'source': serializer.toJson<String>(source),
      'id': serializer.toJson<String>(id),
      'label': serializer.toJson<String>(label),
      'cover': serializer.toJson<String>(cover),
      'intro': serializer.toJson<String>(intro),
      'jumpUrl': serializer.toJson<String>(jumpUrl),
      'isDetailedLoad': serializer.toJson<bool>(isDetailedLoad),
      'genre': serializer.toJson<String>(genre),
      'description': serializer.toJson<String>(description),
      'updateStrategy': serializer.toJson<int>(
          $NovelTableTable.$converterupdateStrategy.toJson(updateStrategy)),
      'isUpdate': serializer.toJson<bool>(isUpdate),
      'status': serializer
          .toJson<int>($NovelTableTable.$converterstatus.toJson(status)),
      'lastUpdateTime': serializer.toJson<int>(lastUpdateTime),
      'sourceName': serializer.toJson<String>(sourceName),
      'isReversal': serializer.toJson<bool>(isReversal),
      'sortKey': serializer.toJson<String>(sortKey),
      'seasonListJson': serializer.toJson<String>(seasonListJson),
      'lastHistoryTime': serializer.toJson<int>(lastHistoryTime),
      'lastReadSeasonId': serializer.toJson<String>(lastReadSeasonId),
      'lastReadSeasonLabel': serializer.toJson<String>(lastReadSeasonLabel),
      'lastReadSeasonIndex': serializer.toJson<int>(lastReadSeasonIndex),
      'lastReadChapterId': serializer.toJson<String>(lastReadChapterId),
      'lastReadChapterLabel': serializer.toJson<String>(lastReadChapterLabel),
      'lastReadSeasonProcess': serializer.toJson<int>(lastReadSeasonProcess),
      'lastReadBookMarkJson': serializer.toJson<int>(lastReadBookMarkJson),
      'tags': serializer.toJson<String>(tags),
      'starTime': serializer.toJson<int>(starTime),
      'pinTime': serializer.toJson<int>(pinTime),
      'customOrder': serializer.toJson<int>(customOrder),
      'ext': serializer.toJson<String>(ext),
    };
  }

  NovelInfo copyWith(
          {String? source,
          String? id,
          String? label,
          String? cover,
          String? intro,
          String? jumpUrl,
          bool? isDetailedLoad,
          String? genre,
          String? description,
          NovelUpdateStrategy? updateStrategy,
          bool? isUpdate,
          NovelStatus? status,
          int? lastUpdateTime,
          String? sourceName,
          bool? isReversal,
          String? sortKey,
          String? seasonListJson,
          int? lastHistoryTime,
          String? lastReadSeasonId,
          String? lastReadSeasonLabel,
          int? lastReadSeasonIndex,
          String? lastReadChapterId,
          String? lastReadChapterLabel,
          int? lastReadSeasonProcess,
          int? lastReadBookMarkJson,
          String? tags,
          int? starTime,
          int? pinTime,
          int? customOrder,
          String? ext}) =>
      NovelInfo(
        source: source ?? this.source,
        id: id ?? this.id,
        label: label ?? this.label,
        cover: cover ?? this.cover,
        intro: intro ?? this.intro,
        jumpUrl: jumpUrl ?? this.jumpUrl,
        isDetailedLoad: isDetailedLoad ?? this.isDetailedLoad,
        genre: genre ?? this.genre,
        description: description ?? this.description,
        updateStrategy: updateStrategy ?? this.updateStrategy,
        isUpdate: isUpdate ?? this.isUpdate,
        status: status ?? this.status,
        lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
        sourceName: sourceName ?? this.sourceName,
        isReversal: isReversal ?? this.isReversal,
        sortKey: sortKey ?? this.sortKey,
        seasonListJson: seasonListJson ?? this.seasonListJson,
        lastHistoryTime: lastHistoryTime ?? this.lastHistoryTime,
        lastReadSeasonId: lastReadSeasonId ?? this.lastReadSeasonId,
        lastReadSeasonLabel: lastReadSeasonLabel ?? this.lastReadSeasonLabel,
        lastReadSeasonIndex: lastReadSeasonIndex ?? this.lastReadSeasonIndex,
        lastReadChapterId: lastReadChapterId ?? this.lastReadChapterId,
        lastReadChapterLabel: lastReadChapterLabel ?? this.lastReadChapterLabel,
        lastReadSeasonProcess:
            lastReadSeasonProcess ?? this.lastReadSeasonProcess,
        lastReadBookMarkJson: lastReadBookMarkJson ?? this.lastReadBookMarkJson,
        tags: tags ?? this.tags,
        starTime: starTime ?? this.starTime,
        pinTime: pinTime ?? this.pinTime,
        customOrder: customOrder ?? this.customOrder,
        ext: ext ?? this.ext,
      );
  @override
  String toString() {
    return (StringBuffer('NovelInfo(')
          ..write('source: $source, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('cover: $cover, ')
          ..write('intro: $intro, ')
          ..write('jumpUrl: $jumpUrl, ')
          ..write('isDetailedLoad: $isDetailedLoad, ')
          ..write('genre: $genre, ')
          ..write('description: $description, ')
          ..write('updateStrategy: $updateStrategy, ')
          ..write('isUpdate: $isUpdate, ')
          ..write('status: $status, ')
          ..write('lastUpdateTime: $lastUpdateTime, ')
          ..write('sourceName: $sourceName, ')
          ..write('isReversal: $isReversal, ')
          ..write('sortKey: $sortKey, ')
          ..write('seasonListJson: $seasonListJson, ')
          ..write('lastHistoryTime: $lastHistoryTime, ')
          ..write('lastReadSeasonId: $lastReadSeasonId, ')
          ..write('lastReadSeasonLabel: $lastReadSeasonLabel, ')
          ..write('lastReadSeasonIndex: $lastReadSeasonIndex, ')
          ..write('lastReadChapterId: $lastReadChapterId, ')
          ..write('lastReadChapterLabel: $lastReadChapterLabel, ')
          ..write('lastReadSeasonProcess: $lastReadSeasonProcess, ')
          ..write('lastReadBookMarkJson: $lastReadBookMarkJson, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder, ')
          ..write('ext: $ext')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        source,
        id,
        label,
        cover,
        intro,
        jumpUrl,
        isDetailedLoad,
        genre,
        description,
        updateStrategy,
        isUpdate,
        status,
        lastUpdateTime,
        sourceName,
        isReversal,
        sortKey,
        seasonListJson,
        lastHistoryTime,
        lastReadSeasonId,
        lastReadSeasonLabel,
        lastReadSeasonIndex,
        lastReadChapterId,
        lastReadChapterLabel,
        lastReadSeasonProcess,
        lastReadBookMarkJson,
        tags,
        starTime,
        pinTime,
        customOrder,
        ext
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NovelInfo &&
          other.source == this.source &&
          other.id == this.id &&
          other.label == this.label &&
          other.cover == this.cover &&
          other.intro == this.intro &&
          other.jumpUrl == this.jumpUrl &&
          other.isDetailedLoad == this.isDetailedLoad &&
          other.genre == this.genre &&
          other.description == this.description &&
          other.updateStrategy == this.updateStrategy &&
          other.isUpdate == this.isUpdate &&
          other.status == this.status &&
          other.lastUpdateTime == this.lastUpdateTime &&
          other.sourceName == this.sourceName &&
          other.isReversal == this.isReversal &&
          other.sortKey == this.sortKey &&
          other.seasonListJson == this.seasonListJson &&
          other.lastHistoryTime == this.lastHistoryTime &&
          other.lastReadSeasonId == this.lastReadSeasonId &&
          other.lastReadSeasonLabel == this.lastReadSeasonLabel &&
          other.lastReadSeasonIndex == this.lastReadSeasonIndex &&
          other.lastReadChapterId == this.lastReadChapterId &&
          other.lastReadChapterLabel == this.lastReadChapterLabel &&
          other.lastReadSeasonProcess == this.lastReadSeasonProcess &&
          other.lastReadBookMarkJson == this.lastReadBookMarkJson &&
          other.tags == this.tags &&
          other.starTime == this.starTime &&
          other.pinTime == this.pinTime &&
          other.customOrder == this.customOrder &&
          other.ext == this.ext);
}

class NovelTableCompanion extends UpdateCompanion<NovelInfo> {
  final Value<String> source;
  final Value<String> id;
  final Value<String> label;
  final Value<String> cover;
  final Value<String> intro;
  final Value<String> jumpUrl;
  final Value<bool> isDetailedLoad;
  final Value<String> genre;
  final Value<String> description;
  final Value<NovelUpdateStrategy> updateStrategy;
  final Value<bool> isUpdate;
  final Value<NovelStatus> status;
  final Value<int> lastUpdateTime;
  final Value<String> sourceName;
  final Value<bool> isReversal;
  final Value<String> sortKey;
  final Value<String> seasonListJson;
  final Value<int> lastHistoryTime;
  final Value<String> lastReadSeasonId;
  final Value<String> lastReadSeasonLabel;
  final Value<int> lastReadSeasonIndex;
  final Value<String> lastReadChapterId;
  final Value<String> lastReadChapterLabel;
  final Value<int> lastReadSeasonProcess;
  final Value<int> lastReadBookMarkJson;
  final Value<String> tags;
  final Value<int> starTime;
  final Value<int> pinTime;
  final Value<int> customOrder;
  final Value<String> ext;
  final Value<int> rowid;
  const NovelTableCompanion({
    this.source = const Value.absent(),
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.cover = const Value.absent(),
    this.intro = const Value.absent(),
    this.jumpUrl = const Value.absent(),
    this.isDetailedLoad = const Value.absent(),
    this.genre = const Value.absent(),
    this.description = const Value.absent(),
    this.updateStrategy = const Value.absent(),
    this.isUpdate = const Value.absent(),
    this.status = const Value.absent(),
    this.lastUpdateTime = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.isReversal = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.seasonListJson = const Value.absent(),
    this.lastHistoryTime = const Value.absent(),
    this.lastReadSeasonId = const Value.absent(),
    this.lastReadSeasonLabel = const Value.absent(),
    this.lastReadSeasonIndex = const Value.absent(),
    this.lastReadChapterId = const Value.absent(),
    this.lastReadChapterLabel = const Value.absent(),
    this.lastReadSeasonProcess = const Value.absent(),
    this.lastReadBookMarkJson = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.ext = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NovelTableCompanion.insert({
    required String source,
    required String id,
    this.label = const Value.absent(),
    this.cover = const Value.absent(),
    this.intro = const Value.absent(),
    this.jumpUrl = const Value.absent(),
    this.isDetailedLoad = const Value.absent(),
    this.genre = const Value.absent(),
    this.description = const Value.absent(),
    this.updateStrategy = const Value.absent(),
    this.isUpdate = const Value.absent(),
    required NovelStatus status,
    this.lastUpdateTime = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.isReversal = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.seasonListJson = const Value.absent(),
    this.lastHistoryTime = const Value.absent(),
    this.lastReadSeasonId = const Value.absent(),
    this.lastReadSeasonLabel = const Value.absent(),
    this.lastReadSeasonIndex = const Value.absent(),
    this.lastReadChapterId = const Value.absent(),
    this.lastReadChapterLabel = const Value.absent(),
    this.lastReadSeasonProcess = const Value.absent(),
    this.lastReadBookMarkJson = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.ext = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : source = Value(source),
        id = Value(id),
        status = Value(status);
  static Insertable<NovelInfo> custom({
    Expression<String>? source,
    Expression<String>? id,
    Expression<String>? label,
    Expression<String>? cover,
    Expression<String>? intro,
    Expression<String>? jumpUrl,
    Expression<bool>? isDetailedLoad,
    Expression<String>? genre,
    Expression<String>? description,
    Expression<int>? updateStrategy,
    Expression<bool>? isUpdate,
    Expression<int>? status,
    Expression<int>? lastUpdateTime,
    Expression<String>? sourceName,
    Expression<bool>? isReversal,
    Expression<String>? sortKey,
    Expression<String>? seasonListJson,
    Expression<int>? lastHistoryTime,
    Expression<String>? lastReadSeasonId,
    Expression<String>? lastReadSeasonLabel,
    Expression<int>? lastReadSeasonIndex,
    Expression<String>? lastReadChapterId,
    Expression<String>? lastReadChapterLabel,
    Expression<int>? lastReadSeasonProcess,
    Expression<int>? lastReadBookMarkJson,
    Expression<String>? tags,
    Expression<int>? starTime,
    Expression<int>? pinTime,
    Expression<int>? customOrder,
    Expression<String>? ext,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (source != null) 'source': source,
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (cover != null) 'cover': cover,
      if (intro != null) 'intro': intro,
      if (jumpUrl != null) 'jump_url': jumpUrl,
      if (isDetailedLoad != null) 'is_detailed_load': isDetailedLoad,
      if (genre != null) 'genre': genre,
      if (description != null) 'description': description,
      if (updateStrategy != null) 'update_strategy': updateStrategy,
      if (isUpdate != null) 'is_update': isUpdate,
      if (status != null) 'status': status,
      if (lastUpdateTime != null) 'last_update_time': lastUpdateTime,
      if (sourceName != null) 'source_name': sourceName,
      if (isReversal != null) 'is_reversal': isReversal,
      if (sortKey != null) 'sort_key': sortKey,
      if (seasonListJson != null) 'season_list_json': seasonListJson,
      if (lastHistoryTime != null) 'last_history_time': lastHistoryTime,
      if (lastReadSeasonId != null) 'last_read_season_id': lastReadSeasonId,
      if (lastReadSeasonLabel != null)
        'last_read_season_label': lastReadSeasonLabel,
      if (lastReadSeasonIndex != null)
        'last_read_season_index': lastReadSeasonIndex,
      if (lastReadChapterId != null) 'last_read_chapter_id': lastReadChapterId,
      if (lastReadChapterLabel != null)
        'last_read_chapter_label': lastReadChapterLabel,
      if (lastReadSeasonProcess != null)
        'last_read_season_process': lastReadSeasonProcess,
      if (lastReadBookMarkJson != null)
        'last_read_book_mark_json': lastReadBookMarkJson,
      if (tags != null) 'tags_id': tags,
      if (starTime != null) 'star_time': starTime,
      if (pinTime != null) 'pin_time': pinTime,
      if (customOrder != null) 'custom_order': customOrder,
      if (ext != null) 'ext': ext,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NovelTableCompanion copyWith(
      {Value<String>? source,
      Value<String>? id,
      Value<String>? label,
      Value<String>? cover,
      Value<String>? intro,
      Value<String>? jumpUrl,
      Value<bool>? isDetailedLoad,
      Value<String>? genre,
      Value<String>? description,
      Value<NovelUpdateStrategy>? updateStrategy,
      Value<bool>? isUpdate,
      Value<NovelStatus>? status,
      Value<int>? lastUpdateTime,
      Value<String>? sourceName,
      Value<bool>? isReversal,
      Value<String>? sortKey,
      Value<String>? seasonListJson,
      Value<int>? lastHistoryTime,
      Value<String>? lastReadSeasonId,
      Value<String>? lastReadSeasonLabel,
      Value<int>? lastReadSeasonIndex,
      Value<String>? lastReadChapterId,
      Value<String>? lastReadChapterLabel,
      Value<int>? lastReadSeasonProcess,
      Value<int>? lastReadBookMarkJson,
      Value<String>? tags,
      Value<int>? starTime,
      Value<int>? pinTime,
      Value<int>? customOrder,
      Value<String>? ext,
      Value<int>? rowid}) {
    return NovelTableCompanion(
      source: source ?? this.source,
      id: id ?? this.id,
      label: label ?? this.label,
      cover: cover ?? this.cover,
      intro: intro ?? this.intro,
      jumpUrl: jumpUrl ?? this.jumpUrl,
      isDetailedLoad: isDetailedLoad ?? this.isDetailedLoad,
      genre: genre ?? this.genre,
      description: description ?? this.description,
      updateStrategy: updateStrategy ?? this.updateStrategy,
      isUpdate: isUpdate ?? this.isUpdate,
      status: status ?? this.status,
      lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
      sourceName: sourceName ?? this.sourceName,
      isReversal: isReversal ?? this.isReversal,
      sortKey: sortKey ?? this.sortKey,
      seasonListJson: seasonListJson ?? this.seasonListJson,
      lastHistoryTime: lastHistoryTime ?? this.lastHistoryTime,
      lastReadSeasonId: lastReadSeasonId ?? this.lastReadSeasonId,
      lastReadSeasonLabel: lastReadSeasonLabel ?? this.lastReadSeasonLabel,
      lastReadSeasonIndex: lastReadSeasonIndex ?? this.lastReadSeasonIndex,
      lastReadChapterId: lastReadChapterId ?? this.lastReadChapterId,
      lastReadChapterLabel: lastReadChapterLabel ?? this.lastReadChapterLabel,
      lastReadSeasonProcess:
          lastReadSeasonProcess ?? this.lastReadSeasonProcess,
      lastReadBookMarkJson: lastReadBookMarkJson ?? this.lastReadBookMarkJson,
      tags: tags ?? this.tags,
      starTime: starTime ?? this.starTime,
      pinTime: pinTime ?? this.pinTime,
      customOrder: customOrder ?? this.customOrder,
      ext: ext ?? this.ext,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (cover.present) {
      map['cover'] = Variable<String>(cover.value);
    }
    if (intro.present) {
      map['intro'] = Variable<String>(intro.value);
    }
    if (jumpUrl.present) {
      map['jump_url'] = Variable<String>(jumpUrl.value);
    }
    if (isDetailedLoad.present) {
      map['is_detailed_load'] = Variable<bool>(isDetailedLoad.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (updateStrategy.present) {
      map['update_strategy'] = Variable<int>($NovelTableTable
          .$converterupdateStrategy
          .toSql(updateStrategy.value));
    }
    if (isUpdate.present) {
      map['is_update'] = Variable<bool>(isUpdate.value);
    }
    if (status.present) {
      map['status'] =
          Variable<int>($NovelTableTable.$converterstatus.toSql(status.value));
    }
    if (lastUpdateTime.present) {
      map['last_update_time'] = Variable<int>(lastUpdateTime.value);
    }
    if (sourceName.present) {
      map['source_name'] = Variable<String>(sourceName.value);
    }
    if (isReversal.present) {
      map['is_reversal'] = Variable<bool>(isReversal.value);
    }
    if (sortKey.present) {
      map['sort_key'] = Variable<String>(sortKey.value);
    }
    if (seasonListJson.present) {
      map['season_list_json'] = Variable<String>(seasonListJson.value);
    }
    if (lastHistoryTime.present) {
      map['last_history_time'] = Variable<int>(lastHistoryTime.value);
    }
    if (lastReadSeasonId.present) {
      map['last_read_season_id'] = Variable<String>(lastReadSeasonId.value);
    }
    if (lastReadSeasonLabel.present) {
      map['last_read_season_label'] =
          Variable<String>(lastReadSeasonLabel.value);
    }
    if (lastReadSeasonIndex.present) {
      map['last_read_season_index'] = Variable<int>(lastReadSeasonIndex.value);
    }
    if (lastReadChapterId.present) {
      map['last_read_chapter_id'] = Variable<String>(lastReadChapterId.value);
    }
    if (lastReadChapterLabel.present) {
      map['last_read_chapter_label'] =
          Variable<String>(lastReadChapterLabel.value);
    }
    if (lastReadSeasonProcess.present) {
      map['last_read_season_process'] =
          Variable<int>(lastReadSeasonProcess.value);
    }
    if (lastReadBookMarkJson.present) {
      map['last_read_book_mark_json'] =
          Variable<int>(lastReadBookMarkJson.value);
    }
    if (tags.present) {
      map['tags_id'] = Variable<String>(tags.value);
    }
    if (starTime.present) {
      map['star_time'] = Variable<int>(starTime.value);
    }
    if (pinTime.present) {
      map['pin_time'] = Variable<int>(pinTime.value);
    }
    if (customOrder.present) {
      map['custom_order'] = Variable<int>(customOrder.value);
    }
    if (ext.present) {
      map['ext'] = Variable<String>(ext.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NovelTableCompanion(')
          ..write('source: $source, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('cover: $cover, ')
          ..write('intro: $intro, ')
          ..write('jumpUrl: $jumpUrl, ')
          ..write('isDetailedLoad: $isDetailedLoad, ')
          ..write('genre: $genre, ')
          ..write('description: $description, ')
          ..write('updateStrategy: $updateStrategy, ')
          ..write('isUpdate: $isUpdate, ')
          ..write('status: $status, ')
          ..write('lastUpdateTime: $lastUpdateTime, ')
          ..write('sourceName: $sourceName, ')
          ..write('isReversal: $isReversal, ')
          ..write('sortKey: $sortKey, ')
          ..write('seasonListJson: $seasonListJson, ')
          ..write('lastHistoryTime: $lastHistoryTime, ')
          ..write('lastReadSeasonId: $lastReadSeasonId, ')
          ..write('lastReadSeasonLabel: $lastReadSeasonLabel, ')
          ..write('lastReadSeasonIndex: $lastReadSeasonIndex, ')
          ..write('lastReadChapterId: $lastReadChapterId, ')
          ..write('lastReadChapterLabel: $lastReadChapterLabel, ')
          ..write('lastReadSeasonProcess: $lastReadSeasonProcess, ')
          ..write('lastReadBookMarkJson: $lastReadBookMarkJson, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder, ')
          ..write('ext: $ext, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$NovelDB extends GeneratedDatabase {
  _$NovelDB(QueryExecutor e) : super(e);
  late final $NovelTableTable novelTable = $NovelTableTable(this);
  late final NovelDao novelDao = NovelDao(this as NovelDB);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [novelTable];
}
