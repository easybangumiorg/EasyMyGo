// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_db.dart';

// ignore_for_file: type=lint
class $MangaTableTable extends MangaTable
    with TableInfo<$MangaTableTable, MangaInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MangaTableTable(this.attachedDatabase, [this._alias]);
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
  late final GeneratedColumnWithTypeConverter<MangaUpdateStrategy, int>
      updateStrategy = GeneratedColumn<int>(
              'update_strategy', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<MangaUpdateStrategy>(
              $MangaTableTable.$converterupdateStrategy);
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
  late final GeneratedColumnWithTypeConverter<MangaStatus, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<MangaStatus>($MangaTableTable.$converterstatus);
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
  static const VerificationMeta _chapterListJsonMeta =
      const VerificationMeta('chapterListJson');
  @override
  late final GeneratedColumn<String> chapterListJson = GeneratedColumn<String>(
      'chapter_list_json', aliasedName, false,
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
  static const VerificationMeta _lastReadChapterCountMeta =
      const VerificationMeta('lastReadChapterCount');
  @override
  late final GeneratedColumn<int> lastReadChapterCount = GeneratedColumn<int>(
      'last_read_chapter_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReadImageIndexMeta =
      const VerificationMeta('lastReadImageIndex');
  @override
  late final GeneratedColumn<int> lastReadImageIndex = GeneratedColumn<int>(
      'last_read_page_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastReadChapterImageCountMeta =
      const VerificationMeta('lastReadChapterImageCount');
  @override
  late final GeneratedColumn<int> lastReadChapterImageCount =
      GeneratedColumn<int>('last_read_chapter_page_count', aliasedName, false,
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
  static const VerificationMeta _markJsonMeta =
      const VerificationMeta('markJson');
  @override
  late final GeneratedColumn<String> markJson = GeneratedColumn<String>(
      'markJson', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
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
        chapterListJson,
        lastHistoryTime,
        lastReadChapterId,
        lastReadChapterLabel,
        lastReadChapterCount,
        lastReadImageIndex,
        lastReadChapterImageCount,
        tags,
        starTime,
        pinTime,
        customOrder,
        markJson,
        ext
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'MangaInfo';
  @override
  VerificationContext validateIntegrity(Insertable<MangaInfo> instance,
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
    if (data.containsKey('chapter_list_json')) {
      context.handle(
          _chapterListJsonMeta,
          chapterListJson.isAcceptableOrUnknown(
              data['chapter_list_json']!, _chapterListJsonMeta));
    }
    if (data.containsKey('last_history_time')) {
      context.handle(
          _lastHistoryTimeMeta,
          lastHistoryTime.isAcceptableOrUnknown(
              data['last_history_time']!, _lastHistoryTimeMeta));
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
    if (data.containsKey('last_read_chapter_count')) {
      context.handle(
          _lastReadChapterCountMeta,
          lastReadChapterCount.isAcceptableOrUnknown(
              data['last_read_chapter_count']!, _lastReadChapterCountMeta));
    }
    if (data.containsKey('last_read_page_index')) {
      context.handle(
          _lastReadImageIndexMeta,
          lastReadImageIndex.isAcceptableOrUnknown(
              data['last_read_page_index']!, _lastReadImageIndexMeta));
    }
    if (data.containsKey('last_read_chapter_page_count')) {
      context.handle(
          _lastReadChapterImageCountMeta,
          lastReadChapterImageCount.isAcceptableOrUnknown(
              data['last_read_chapter_page_count']!,
              _lastReadChapterImageCountMeta));
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
    if (data.containsKey('markJson')) {
      context.handle(_markJsonMeta,
          markJson.isAcceptableOrUnknown(data['markJson']!, _markJsonMeta));
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
  MangaInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MangaInfo(
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
      updateStrategy: $MangaTableTable.$converterupdateStrategy.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}update_strategy'])!),
      isUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_update'])!,
      status: $MangaTableTable.$converterstatus.fromSql(attachedDatabase
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
      chapterListJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}chapter_list_json'])!,
      lastHistoryTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_history_time'])!,
      lastReadChapterId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_read_chapter_id'])!,
      lastReadChapterLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}last_read_chapter_label'])!,
      lastReadChapterCount: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}last_read_chapter_count'])!,
      lastReadImageIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}last_read_page_index'])!,
      lastReadChapterImageCount: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}last_read_chapter_page_count'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags_id'])!,
      starTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}star_time'])!,
      pinTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pin_time'])!,
      customOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}custom_order'])!,
      markJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}markJson'])!,
      ext: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ext'])!,
    );
  }

  @override
  $MangaTableTable createAlias(String alias) {
    return $MangaTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MangaUpdateStrategy, int, int>
      $converterupdateStrategy =
      const EnumIndexConverter<MangaUpdateStrategy>(MangaUpdateStrategy.values);
  static JsonTypeConverter2<MangaStatus, int, int> $converterstatus =
      const EnumIndexConverter<MangaStatus>(MangaStatus.values);
}

class MangaInfo extends DataClass implements Insertable<MangaInfo> {
  final String source;
  final String id;
  final String label;
  final String cover;
  final String intro;
  final String jumpUrl;
  final bool isDetailedLoad;
  final String genre;
  final String description;
  final MangaUpdateStrategy updateStrategy;
  final bool isUpdate;
  final MangaStatus status;
  final int lastUpdateTime;
  final String sourceName;
  final bool isReversal;
  final String sortKey;
  final String chapterListJson;
  final int lastHistoryTime;
  final String lastReadChapterId;
  final String lastReadChapterLabel;
  final int lastReadChapterCount;
  final int lastReadImageIndex;
  final int lastReadChapterImageCount;
  final String tags;
  final int starTime;
  final int pinTime;
  final int customOrder;
  final String markJson;
  final String ext;
  const MangaInfo(
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
      required this.chapterListJson,
      required this.lastHistoryTime,
      required this.lastReadChapterId,
      required this.lastReadChapterLabel,
      required this.lastReadChapterCount,
      required this.lastReadImageIndex,
      required this.lastReadChapterImageCount,
      required this.tags,
      required this.starTime,
      required this.pinTime,
      required this.customOrder,
      required this.markJson,
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
          $MangaTableTable.$converterupdateStrategy.toSql(updateStrategy));
    }
    map['is_update'] = Variable<bool>(isUpdate);
    {
      map['status'] =
          Variable<int>($MangaTableTable.$converterstatus.toSql(status));
    }
    map['last_update_time'] = Variable<int>(lastUpdateTime);
    map['source_name'] = Variable<String>(sourceName);
    map['is_reversal'] = Variable<bool>(isReversal);
    map['sort_key'] = Variable<String>(sortKey);
    map['chapter_list_json'] = Variable<String>(chapterListJson);
    map['last_history_time'] = Variable<int>(lastHistoryTime);
    map['last_read_chapter_id'] = Variable<String>(lastReadChapterId);
    map['last_read_chapter_label'] = Variable<String>(lastReadChapterLabel);
    map['last_read_chapter_count'] = Variable<int>(lastReadChapterCount);
    map['last_read_page_index'] = Variable<int>(lastReadImageIndex);
    map['last_read_chapter_page_count'] =
        Variable<int>(lastReadChapterImageCount);
    map['tags_id'] = Variable<String>(tags);
    map['star_time'] = Variable<int>(starTime);
    map['pin_time'] = Variable<int>(pinTime);
    map['custom_order'] = Variable<int>(customOrder);
    map['markJson'] = Variable<String>(markJson);
    map['ext'] = Variable<String>(ext);
    return map;
  }

  MangaTableCompanion toCompanion(bool nullToAbsent) {
    return MangaTableCompanion(
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
      chapterListJson: Value(chapterListJson),
      lastHistoryTime: Value(lastHistoryTime),
      lastReadChapterId: Value(lastReadChapterId),
      lastReadChapterLabel: Value(lastReadChapterLabel),
      lastReadChapterCount: Value(lastReadChapterCount),
      lastReadImageIndex: Value(lastReadImageIndex),
      lastReadChapterImageCount: Value(lastReadChapterImageCount),
      tags: Value(tags),
      starTime: Value(starTime),
      pinTime: Value(pinTime),
      customOrder: Value(customOrder),
      markJson: Value(markJson),
      ext: Value(ext),
    );
  }

  factory MangaInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MangaInfo(
      source: serializer.fromJson<String>(json['source']),
      id: serializer.fromJson<String>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      cover: serializer.fromJson<String>(json['cover']),
      intro: serializer.fromJson<String>(json['intro']),
      jumpUrl: serializer.fromJson<String>(json['jumpUrl']),
      isDetailedLoad: serializer.fromJson<bool>(json['isDetailedLoad']),
      genre: serializer.fromJson<String>(json['genre']),
      description: serializer.fromJson<String>(json['description']),
      updateStrategy: $MangaTableTable.$converterupdateStrategy
          .fromJson(serializer.fromJson<int>(json['updateStrategy'])),
      isUpdate: serializer.fromJson<bool>(json['isUpdate']),
      status: $MangaTableTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      lastUpdateTime: serializer.fromJson<int>(json['lastUpdateTime']),
      sourceName: serializer.fromJson<String>(json['sourceName']),
      isReversal: serializer.fromJson<bool>(json['isReversal']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
      chapterListJson: serializer.fromJson<String>(json['chapterListJson']),
      lastHistoryTime: serializer.fromJson<int>(json['lastHistoryTime']),
      lastReadChapterId: serializer.fromJson<String>(json['lastReadChapterId']),
      lastReadChapterLabel:
          serializer.fromJson<String>(json['lastReadChapterLabel']),
      lastReadChapterCount:
          serializer.fromJson<int>(json['lastReadChapterCount']),
      lastReadImageIndex: serializer.fromJson<int>(json['lastReadImageIndex']),
      lastReadChapterImageCount:
          serializer.fromJson<int>(json['lastReadChapterImageCount']),
      tags: serializer.fromJson<String>(json['tags']),
      starTime: serializer.fromJson<int>(json['starTime']),
      pinTime: serializer.fromJson<int>(json['pinTime']),
      customOrder: serializer.fromJson<int>(json['customOrder']),
      markJson: serializer.fromJson<String>(json['markJson']),
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
          $MangaTableTable.$converterupdateStrategy.toJson(updateStrategy)),
      'isUpdate': serializer.toJson<bool>(isUpdate),
      'status': serializer
          .toJson<int>($MangaTableTable.$converterstatus.toJson(status)),
      'lastUpdateTime': serializer.toJson<int>(lastUpdateTime),
      'sourceName': serializer.toJson<String>(sourceName),
      'isReversal': serializer.toJson<bool>(isReversal),
      'sortKey': serializer.toJson<String>(sortKey),
      'chapterListJson': serializer.toJson<String>(chapterListJson),
      'lastHistoryTime': serializer.toJson<int>(lastHistoryTime),
      'lastReadChapterId': serializer.toJson<String>(lastReadChapterId),
      'lastReadChapterLabel': serializer.toJson<String>(lastReadChapterLabel),
      'lastReadChapterCount': serializer.toJson<int>(lastReadChapterCount),
      'lastReadImageIndex': serializer.toJson<int>(lastReadImageIndex),
      'lastReadChapterImageCount':
          serializer.toJson<int>(lastReadChapterImageCount),
      'tags': serializer.toJson<String>(tags),
      'starTime': serializer.toJson<int>(starTime),
      'pinTime': serializer.toJson<int>(pinTime),
      'customOrder': serializer.toJson<int>(customOrder),
      'markJson': serializer.toJson<String>(markJson),
      'ext': serializer.toJson<String>(ext),
    };
  }

  MangaInfo copyWith(
          {String? source,
          String? id,
          String? label,
          String? cover,
          String? intro,
          String? jumpUrl,
          bool? isDetailedLoad,
          String? genre,
          String? description,
          MangaUpdateStrategy? updateStrategy,
          bool? isUpdate,
          MangaStatus? status,
          int? lastUpdateTime,
          String? sourceName,
          bool? isReversal,
          String? sortKey,
          String? chapterListJson,
          int? lastHistoryTime,
          String? lastReadChapterId,
          String? lastReadChapterLabel,
          int? lastReadChapterCount,
          int? lastReadImageIndex,
          int? lastReadChapterImageCount,
          String? tags,
          int? starTime,
          int? pinTime,
          int? customOrder,
          String? markJson,
          String? ext}) =>
      MangaInfo(
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
        chapterListJson: chapterListJson ?? this.chapterListJson,
        lastHistoryTime: lastHistoryTime ?? this.lastHistoryTime,
        lastReadChapterId: lastReadChapterId ?? this.lastReadChapterId,
        lastReadChapterLabel: lastReadChapterLabel ?? this.lastReadChapterLabel,
        lastReadChapterCount: lastReadChapterCount ?? this.lastReadChapterCount,
        lastReadImageIndex: lastReadImageIndex ?? this.lastReadImageIndex,
        lastReadChapterImageCount:
            lastReadChapterImageCount ?? this.lastReadChapterImageCount,
        tags: tags ?? this.tags,
        starTime: starTime ?? this.starTime,
        pinTime: pinTime ?? this.pinTime,
        customOrder: customOrder ?? this.customOrder,
        markJson: markJson ?? this.markJson,
        ext: ext ?? this.ext,
      );
  @override
  String toString() {
    return (StringBuffer('MangaInfo(')
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
          ..write('chapterListJson: $chapterListJson, ')
          ..write('lastHistoryTime: $lastHistoryTime, ')
          ..write('lastReadChapterId: $lastReadChapterId, ')
          ..write('lastReadChapterLabel: $lastReadChapterLabel, ')
          ..write('lastReadChapterCount: $lastReadChapterCount, ')
          ..write('lastReadImageIndex: $lastReadImageIndex, ')
          ..write('lastReadChapterImageCount: $lastReadChapterImageCount, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder, ')
          ..write('markJson: $markJson, ')
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
        chapterListJson,
        lastHistoryTime,
        lastReadChapterId,
        lastReadChapterLabel,
        lastReadChapterCount,
        lastReadImageIndex,
        lastReadChapterImageCount,
        tags,
        starTime,
        pinTime,
        customOrder,
        markJson,
        ext
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MangaInfo &&
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
          other.chapterListJson == this.chapterListJson &&
          other.lastHistoryTime == this.lastHistoryTime &&
          other.lastReadChapterId == this.lastReadChapterId &&
          other.lastReadChapterLabel == this.lastReadChapterLabel &&
          other.lastReadChapterCount == this.lastReadChapterCount &&
          other.lastReadImageIndex == this.lastReadImageIndex &&
          other.lastReadChapterImageCount == this.lastReadChapterImageCount &&
          other.tags == this.tags &&
          other.starTime == this.starTime &&
          other.pinTime == this.pinTime &&
          other.customOrder == this.customOrder &&
          other.markJson == this.markJson &&
          other.ext == this.ext);
}

class MangaTableCompanion extends UpdateCompanion<MangaInfo> {
  final Value<String> source;
  final Value<String> id;
  final Value<String> label;
  final Value<String> cover;
  final Value<String> intro;
  final Value<String> jumpUrl;
  final Value<bool> isDetailedLoad;
  final Value<String> genre;
  final Value<String> description;
  final Value<MangaUpdateStrategy> updateStrategy;
  final Value<bool> isUpdate;
  final Value<MangaStatus> status;
  final Value<int> lastUpdateTime;
  final Value<String> sourceName;
  final Value<bool> isReversal;
  final Value<String> sortKey;
  final Value<String> chapterListJson;
  final Value<int> lastHistoryTime;
  final Value<String> lastReadChapterId;
  final Value<String> lastReadChapterLabel;
  final Value<int> lastReadChapterCount;
  final Value<int> lastReadImageIndex;
  final Value<int> lastReadChapterImageCount;
  final Value<String> tags;
  final Value<int> starTime;
  final Value<int> pinTime;
  final Value<int> customOrder;
  final Value<String> markJson;
  final Value<String> ext;
  final Value<int> rowid;
  const MangaTableCompanion({
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
    this.chapterListJson = const Value.absent(),
    this.lastHistoryTime = const Value.absent(),
    this.lastReadChapterId = const Value.absent(),
    this.lastReadChapterLabel = const Value.absent(),
    this.lastReadChapterCount = const Value.absent(),
    this.lastReadImageIndex = const Value.absent(),
    this.lastReadChapterImageCount = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.markJson = const Value.absent(),
    this.ext = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MangaTableCompanion.insert({
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
    required MangaStatus status,
    this.lastUpdateTime = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.isReversal = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.chapterListJson = const Value.absent(),
    this.lastHistoryTime = const Value.absent(),
    this.lastReadChapterId = const Value.absent(),
    this.lastReadChapterLabel = const Value.absent(),
    this.lastReadChapterCount = const Value.absent(),
    this.lastReadImageIndex = const Value.absent(),
    this.lastReadChapterImageCount = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.markJson = const Value.absent(),
    this.ext = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : source = Value(source),
        id = Value(id),
        status = Value(status);
  static Insertable<MangaInfo> custom({
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
    Expression<String>? chapterListJson,
    Expression<int>? lastHistoryTime,
    Expression<String>? lastReadChapterId,
    Expression<String>? lastReadChapterLabel,
    Expression<int>? lastReadChapterCount,
    Expression<int>? lastReadImageIndex,
    Expression<int>? lastReadChapterImageCount,
    Expression<String>? tags,
    Expression<int>? starTime,
    Expression<int>? pinTime,
    Expression<int>? customOrder,
    Expression<String>? markJson,
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
      if (chapterListJson != null) 'chapter_list_json': chapterListJson,
      if (lastHistoryTime != null) 'last_history_time': lastHistoryTime,
      if (lastReadChapterId != null) 'last_read_chapter_id': lastReadChapterId,
      if (lastReadChapterLabel != null)
        'last_read_chapter_label': lastReadChapterLabel,
      if (lastReadChapterCount != null)
        'last_read_chapter_count': lastReadChapterCount,
      if (lastReadImageIndex != null)
        'last_read_page_index': lastReadImageIndex,
      if (lastReadChapterImageCount != null)
        'last_read_chapter_page_count': lastReadChapterImageCount,
      if (tags != null) 'tags_id': tags,
      if (starTime != null) 'star_time': starTime,
      if (pinTime != null) 'pin_time': pinTime,
      if (customOrder != null) 'custom_order': customOrder,
      if (markJson != null) 'markJson': markJson,
      if (ext != null) 'ext': ext,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MangaTableCompanion copyWith(
      {Value<String>? source,
      Value<String>? id,
      Value<String>? label,
      Value<String>? cover,
      Value<String>? intro,
      Value<String>? jumpUrl,
      Value<bool>? isDetailedLoad,
      Value<String>? genre,
      Value<String>? description,
      Value<MangaUpdateStrategy>? updateStrategy,
      Value<bool>? isUpdate,
      Value<MangaStatus>? status,
      Value<int>? lastUpdateTime,
      Value<String>? sourceName,
      Value<bool>? isReversal,
      Value<String>? sortKey,
      Value<String>? chapterListJson,
      Value<int>? lastHistoryTime,
      Value<String>? lastReadChapterId,
      Value<String>? lastReadChapterLabel,
      Value<int>? lastReadChapterCount,
      Value<int>? lastReadImageIndex,
      Value<int>? lastReadChapterImageCount,
      Value<String>? tags,
      Value<int>? starTime,
      Value<int>? pinTime,
      Value<int>? customOrder,
      Value<String>? markJson,
      Value<String>? ext,
      Value<int>? rowid}) {
    return MangaTableCompanion(
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
      chapterListJson: chapterListJson ?? this.chapterListJson,
      lastHistoryTime: lastHistoryTime ?? this.lastHistoryTime,
      lastReadChapterId: lastReadChapterId ?? this.lastReadChapterId,
      lastReadChapterLabel: lastReadChapterLabel ?? this.lastReadChapterLabel,
      lastReadChapterCount: lastReadChapterCount ?? this.lastReadChapterCount,
      lastReadImageIndex: lastReadImageIndex ?? this.lastReadImageIndex,
      lastReadChapterImageCount:
          lastReadChapterImageCount ?? this.lastReadChapterImageCount,
      tags: tags ?? this.tags,
      starTime: starTime ?? this.starTime,
      pinTime: pinTime ?? this.pinTime,
      customOrder: customOrder ?? this.customOrder,
      markJson: markJson ?? this.markJson,
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
      map['update_strategy'] = Variable<int>($MangaTableTable
          .$converterupdateStrategy
          .toSql(updateStrategy.value));
    }
    if (isUpdate.present) {
      map['is_update'] = Variable<bool>(isUpdate.value);
    }
    if (status.present) {
      map['status'] =
          Variable<int>($MangaTableTable.$converterstatus.toSql(status.value));
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
    if (chapterListJson.present) {
      map['chapter_list_json'] = Variable<String>(chapterListJson.value);
    }
    if (lastHistoryTime.present) {
      map['last_history_time'] = Variable<int>(lastHistoryTime.value);
    }
    if (lastReadChapterId.present) {
      map['last_read_chapter_id'] = Variable<String>(lastReadChapterId.value);
    }
    if (lastReadChapterLabel.present) {
      map['last_read_chapter_label'] =
          Variable<String>(lastReadChapterLabel.value);
    }
    if (lastReadChapterCount.present) {
      map['last_read_chapter_count'] =
          Variable<int>(lastReadChapterCount.value);
    }
    if (lastReadImageIndex.present) {
      map['last_read_page_index'] = Variable<int>(lastReadImageIndex.value);
    }
    if (lastReadChapterImageCount.present) {
      map['last_read_chapter_page_count'] =
          Variable<int>(lastReadChapterImageCount.value);
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
    if (markJson.present) {
      map['markJson'] = Variable<String>(markJson.value);
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
    return (StringBuffer('MangaTableCompanion(')
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
          ..write('chapterListJson: $chapterListJson, ')
          ..write('lastHistoryTime: $lastHistoryTime, ')
          ..write('lastReadChapterId: $lastReadChapterId, ')
          ..write('lastReadChapterLabel: $lastReadChapterLabel, ')
          ..write('lastReadChapterCount: $lastReadChapterCount, ')
          ..write('lastReadImageIndex: $lastReadImageIndex, ')
          ..write('lastReadChapterImageCount: $lastReadChapterImageCount, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder, ')
          ..write('markJson: $markJson, ')
          ..write('ext: $ext, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MangaDB extends GeneratedDatabase {
  _$MangaDB(QueryExecutor e) : super(e);
  late final $MangaTableTable mangaTable = $MangaTableTable(this);
  late final MangaDao mangaDao = MangaDao(this as MangaDB);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mangaTable];
}
