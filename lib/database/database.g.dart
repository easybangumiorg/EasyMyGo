// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MangaInfoTable extends MangaInfo with TableInfo<$MangaInfoTable, Manga> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MangaInfoTable(this.attachedDatabase, [this._alias]);
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
  late final GeneratedColumnWithTypeConverter<UpdateStrategy, int>
      updateStrategy = GeneratedColumn<int>(
              'update_strategy', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<UpdateStrategy>(
              $MangaInfoTable.$converterupdateStrategy);
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
  late final GeneratedColumnWithTypeConverter<Status, int> status =
      GeneratedColumn<int>('status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Status>($MangaInfoTable.$converterstatus);
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
  static const VerificationMeta _lastChapterIndexMeta =
      const VerificationMeta('lastChapterIndex');
  @override
  late final GeneratedColumn<int> lastChapterIndex = GeneratedColumn<int>(
      'last_chapter_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastChapterLabelMeta =
      const VerificationMeta('lastChapterLabel');
  @override
  late final GeneratedColumn<String> lastChapterLabel = GeneratedColumn<String>(
      'last_chapter_label', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  static const VerificationMeta _lastChapterCountMeta =
      const VerificationMeta('lastChapterCount');
  @override
  late final GeneratedColumn<int> lastChapterCount = GeneratedColumn<int>(
      'last_chapter_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastImageIndexMeta =
      const VerificationMeta('lastImageIndex');
  @override
  late final GeneratedColumn<int> lastImageIndex = GeneratedColumn<int>(
      'last_image_index', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastChapterImageCountMeta =
      const VerificationMeta('lastChapterImageCount');
  @override
  late final GeneratedColumn<int> lastChapterImageCount = GeneratedColumn<int>(
      'last_chapter_image_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, false,
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
        lastChapterIndex,
        lastChapterLabel,
        lastChapterCount,
        lastImageIndex,
        lastChapterImageCount,
        tags,
        starTime,
        pinTime,
        customOrder
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'Manga';
  @override
  VerificationContext validateIntegrity(Insertable<Manga> instance,
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
    if (data.containsKey('last_chapter_index')) {
      context.handle(
          _lastChapterIndexMeta,
          lastChapterIndex.isAcceptableOrUnknown(
              data['last_chapter_index']!, _lastChapterIndexMeta));
    }
    if (data.containsKey('last_chapter_label')) {
      context.handle(
          _lastChapterLabelMeta,
          lastChapterLabel.isAcceptableOrUnknown(
              data['last_chapter_label']!, _lastChapterLabelMeta));
    }
    if (data.containsKey('last_chapter_count')) {
      context.handle(
          _lastChapterCountMeta,
          lastChapterCount.isAcceptableOrUnknown(
              data['last_chapter_count']!, _lastChapterCountMeta));
    }
    if (data.containsKey('last_image_index')) {
      context.handle(
          _lastImageIndexMeta,
          lastImageIndex.isAcceptableOrUnknown(
              data['last_image_index']!, _lastImageIndexMeta));
    }
    if (data.containsKey('last_chapter_image_count')) {
      context.handle(
          _lastChapterImageCountMeta,
          lastChapterImageCount.isAcceptableOrUnknown(
              data['last_chapter_image_count']!, _lastChapterImageCountMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {source, id};
  @override
  Manga map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Manga(
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
      updateStrategy: $MangaInfoTable.$converterupdateStrategy.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}update_strategy'])!),
      isUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_update'])!,
      status: $MangaInfoTable.$converterstatus.fromSql(attachedDatabase
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
      lastChapterIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}last_chapter_index'])!,
      lastChapterLabel: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_chapter_label'])!,
      lastChapterCount: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}last_chapter_count'])!,
      lastImageIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_image_index'])!,
      lastChapterImageCount: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}last_chapter_image_count'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags'])!,
      starTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}star_time'])!,
      pinTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pin_time'])!,
      customOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}custom_order'])!,
    );
  }

  @override
  $MangaInfoTable createAlias(String alias) {
    return $MangaInfoTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<UpdateStrategy, int, int> $converterupdateStrategy =
      const EnumIndexConverter<UpdateStrategy>(UpdateStrategy.values);
  static JsonTypeConverter2<Status, int, int> $converterstatus =
      const EnumIndexConverter<Status>(Status.values);
}

class Manga extends DataClass implements Insertable<Manga> {
  final String source;
  final String id;
  final String label;
  final String cover;
  final String intro;
  final String jumpUrl;
  final bool isDetailedLoad;
  final String genre;
  final String description;
  final UpdateStrategy updateStrategy;
  final bool isUpdate;
  final Status status;
  final int lastUpdateTime;
  final String sourceName;
  final bool isReversal;
  final String sortKey;
  final String chapterListJson;
  final int lastHistoryTime;
  final int lastChapterIndex;
  final String lastChapterLabel;
  final int lastChapterCount;
  final int lastImageIndex;
  final int lastChapterImageCount;
  final String tags;
  final int starTime;
  final int pinTime;
  final int customOrder;
  const Manga(
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
      required this.lastChapterIndex,
      required this.lastChapterLabel,
      required this.lastChapterCount,
      required this.lastImageIndex,
      required this.lastChapterImageCount,
      required this.tags,
      required this.starTime,
      required this.pinTime,
      required this.customOrder});
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
          $MangaInfoTable.$converterupdateStrategy.toSql(updateStrategy));
    }
    map['is_update'] = Variable<bool>(isUpdate);
    {
      map['status'] =
          Variable<int>($MangaInfoTable.$converterstatus.toSql(status));
    }
    map['last_update_time'] = Variable<int>(lastUpdateTime);
    map['source_name'] = Variable<String>(sourceName);
    map['is_reversal'] = Variable<bool>(isReversal);
    map['sort_key'] = Variable<String>(sortKey);
    map['chapter_list_json'] = Variable<String>(chapterListJson);
    map['last_history_time'] = Variable<int>(lastHistoryTime);
    map['last_chapter_index'] = Variable<int>(lastChapterIndex);
    map['last_chapter_label'] = Variable<String>(lastChapterLabel);
    map['last_chapter_count'] = Variable<int>(lastChapterCount);
    map['last_image_index'] = Variable<int>(lastImageIndex);
    map['last_chapter_image_count'] = Variable<int>(lastChapterImageCount);
    map['tags'] = Variable<String>(tags);
    map['star_time'] = Variable<int>(starTime);
    map['pin_time'] = Variable<int>(pinTime);
    map['custom_order'] = Variable<int>(customOrder);
    return map;
  }

  MangaInfoCompanion toCompanion(bool nullToAbsent) {
    return MangaInfoCompanion(
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
      lastChapterIndex: Value(lastChapterIndex),
      lastChapterLabel: Value(lastChapterLabel),
      lastChapterCount: Value(lastChapterCount),
      lastImageIndex: Value(lastImageIndex),
      lastChapterImageCount: Value(lastChapterImageCount),
      tags: Value(tags),
      starTime: Value(starTime),
      pinTime: Value(pinTime),
      customOrder: Value(customOrder),
    );
  }

  factory Manga.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Manga(
      source: serializer.fromJson<String>(json['source']),
      id: serializer.fromJson<String>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      cover: serializer.fromJson<String>(json['cover']),
      intro: serializer.fromJson<String>(json['intro']),
      jumpUrl: serializer.fromJson<String>(json['jumpUrl']),
      isDetailedLoad: serializer.fromJson<bool>(json['isDetailedLoad']),
      genre: serializer.fromJson<String>(json['genre']),
      description: serializer.fromJson<String>(json['description']),
      updateStrategy: $MangaInfoTable.$converterupdateStrategy
          .fromJson(serializer.fromJson<int>(json['updateStrategy'])),
      isUpdate: serializer.fromJson<bool>(json['isUpdate']),
      status: $MangaInfoTable.$converterstatus
          .fromJson(serializer.fromJson<int>(json['status'])),
      lastUpdateTime: serializer.fromJson<int>(json['lastUpdateTime']),
      sourceName: serializer.fromJson<String>(json['sourceName']),
      isReversal: serializer.fromJson<bool>(json['isReversal']),
      sortKey: serializer.fromJson<String>(json['sortKey']),
      chapterListJson: serializer.fromJson<String>(json['chapterListJson']),
      lastHistoryTime: serializer.fromJson<int>(json['lastHistoryTime']),
      lastChapterIndex: serializer.fromJson<int>(json['lastChapterIndex']),
      lastChapterLabel: serializer.fromJson<String>(json['lastChapterLabel']),
      lastChapterCount: serializer.fromJson<int>(json['lastChapterCount']),
      lastImageIndex: serializer.fromJson<int>(json['lastImageIndex']),
      lastChapterImageCount:
          serializer.fromJson<int>(json['lastChapterImageCount']),
      tags: serializer.fromJson<String>(json['tags']),
      starTime: serializer.fromJson<int>(json['starTime']),
      pinTime: serializer.fromJson<int>(json['pinTime']),
      customOrder: serializer.fromJson<int>(json['customOrder']),
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
          $MangaInfoTable.$converterupdateStrategy.toJson(updateStrategy)),
      'isUpdate': serializer.toJson<bool>(isUpdate),
      'status': serializer
          .toJson<int>($MangaInfoTable.$converterstatus.toJson(status)),
      'lastUpdateTime': serializer.toJson<int>(lastUpdateTime),
      'sourceName': serializer.toJson<String>(sourceName),
      'isReversal': serializer.toJson<bool>(isReversal),
      'sortKey': serializer.toJson<String>(sortKey),
      'chapterListJson': serializer.toJson<String>(chapterListJson),
      'lastHistoryTime': serializer.toJson<int>(lastHistoryTime),
      'lastChapterIndex': serializer.toJson<int>(lastChapterIndex),
      'lastChapterLabel': serializer.toJson<String>(lastChapterLabel),
      'lastChapterCount': serializer.toJson<int>(lastChapterCount),
      'lastImageIndex': serializer.toJson<int>(lastImageIndex),
      'lastChapterImageCount': serializer.toJson<int>(lastChapterImageCount),
      'tags': serializer.toJson<String>(tags),
      'starTime': serializer.toJson<int>(starTime),
      'pinTime': serializer.toJson<int>(pinTime),
      'customOrder': serializer.toJson<int>(customOrder),
    };
  }

  Manga copyWith(
          {String? source,
          String? id,
          String? label,
          String? cover,
          String? intro,
          String? jumpUrl,
          bool? isDetailedLoad,
          String? genre,
          String? description,
          UpdateStrategy? updateStrategy,
          bool? isUpdate,
          Status? status,
          int? lastUpdateTime,
          String? sourceName,
          bool? isReversal,
          String? sortKey,
          String? chapterListJson,
          int? lastHistoryTime,
          int? lastChapterIndex,
          String? lastChapterLabel,
          int? lastChapterCount,
          int? lastImageIndex,
          int? lastChapterImageCount,
          String? tags,
          int? starTime,
          int? pinTime,
          int? customOrder}) =>
      Manga(
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
        lastChapterIndex: lastChapterIndex ?? this.lastChapterIndex,
        lastChapterLabel: lastChapterLabel ?? this.lastChapterLabel,
        lastChapterCount: lastChapterCount ?? this.lastChapterCount,
        lastImageIndex: lastImageIndex ?? this.lastImageIndex,
        lastChapterImageCount:
            lastChapterImageCount ?? this.lastChapterImageCount,
        tags: tags ?? this.tags,
        starTime: starTime ?? this.starTime,
        pinTime: pinTime ?? this.pinTime,
        customOrder: customOrder ?? this.customOrder,
      );
  @override
  String toString() {
    return (StringBuffer('Manga(')
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
          ..write('lastChapterIndex: $lastChapterIndex, ')
          ..write('lastChapterLabel: $lastChapterLabel, ')
          ..write('lastChapterCount: $lastChapterCount, ')
          ..write('lastImageIndex: $lastImageIndex, ')
          ..write('lastChapterImageCount: $lastChapterImageCount, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder')
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
        lastChapterIndex,
        lastChapterLabel,
        lastChapterCount,
        lastImageIndex,
        lastChapterImageCount,
        tags,
        starTime,
        pinTime,
        customOrder
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Manga &&
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
          other.lastChapterIndex == this.lastChapterIndex &&
          other.lastChapterLabel == this.lastChapterLabel &&
          other.lastChapterCount == this.lastChapterCount &&
          other.lastImageIndex == this.lastImageIndex &&
          other.lastChapterImageCount == this.lastChapterImageCount &&
          other.tags == this.tags &&
          other.starTime == this.starTime &&
          other.pinTime == this.pinTime &&
          other.customOrder == this.customOrder);
}

class MangaInfoCompanion extends UpdateCompanion<Manga> {
  final Value<String> source;
  final Value<String> id;
  final Value<String> label;
  final Value<String> cover;
  final Value<String> intro;
  final Value<String> jumpUrl;
  final Value<bool> isDetailedLoad;
  final Value<String> genre;
  final Value<String> description;
  final Value<UpdateStrategy> updateStrategy;
  final Value<bool> isUpdate;
  final Value<Status> status;
  final Value<int> lastUpdateTime;
  final Value<String> sourceName;
  final Value<bool> isReversal;
  final Value<String> sortKey;
  final Value<String> chapterListJson;
  final Value<int> lastHistoryTime;
  final Value<int> lastChapterIndex;
  final Value<String> lastChapterLabel;
  final Value<int> lastChapterCount;
  final Value<int> lastImageIndex;
  final Value<int> lastChapterImageCount;
  final Value<String> tags;
  final Value<int> starTime;
  final Value<int> pinTime;
  final Value<int> customOrder;
  final Value<int> rowid;
  const MangaInfoCompanion({
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
    this.lastChapterIndex = const Value.absent(),
    this.lastChapterLabel = const Value.absent(),
    this.lastChapterCount = const Value.absent(),
    this.lastImageIndex = const Value.absent(),
    this.lastChapterImageCount = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MangaInfoCompanion.insert({
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
    required Status status,
    this.lastUpdateTime = const Value.absent(),
    this.sourceName = const Value.absent(),
    this.isReversal = const Value.absent(),
    this.sortKey = const Value.absent(),
    this.chapterListJson = const Value.absent(),
    this.lastHistoryTime = const Value.absent(),
    this.lastChapterIndex = const Value.absent(),
    this.lastChapterLabel = const Value.absent(),
    this.lastChapterCount = const Value.absent(),
    this.lastImageIndex = const Value.absent(),
    this.lastChapterImageCount = const Value.absent(),
    this.tags = const Value.absent(),
    this.starTime = const Value.absent(),
    this.pinTime = const Value.absent(),
    this.customOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : source = Value(source),
        id = Value(id),
        status = Value(status);
  static Insertable<Manga> custom({
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
    Expression<int>? lastChapterIndex,
    Expression<String>? lastChapterLabel,
    Expression<int>? lastChapterCount,
    Expression<int>? lastImageIndex,
    Expression<int>? lastChapterImageCount,
    Expression<String>? tags,
    Expression<int>? starTime,
    Expression<int>? pinTime,
    Expression<int>? customOrder,
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
      if (lastChapterIndex != null) 'last_chapter_index': lastChapterIndex,
      if (lastChapterLabel != null) 'last_chapter_label': lastChapterLabel,
      if (lastChapterCount != null) 'last_chapter_count': lastChapterCount,
      if (lastImageIndex != null) 'last_image_index': lastImageIndex,
      if (lastChapterImageCount != null)
        'last_chapter_image_count': lastChapterImageCount,
      if (tags != null) 'tags': tags,
      if (starTime != null) 'star_time': starTime,
      if (pinTime != null) 'pin_time': pinTime,
      if (customOrder != null) 'custom_order': customOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MangaInfoCompanion copyWith(
      {Value<String>? source,
      Value<String>? id,
      Value<String>? label,
      Value<String>? cover,
      Value<String>? intro,
      Value<String>? jumpUrl,
      Value<bool>? isDetailedLoad,
      Value<String>? genre,
      Value<String>? description,
      Value<UpdateStrategy>? updateStrategy,
      Value<bool>? isUpdate,
      Value<Status>? status,
      Value<int>? lastUpdateTime,
      Value<String>? sourceName,
      Value<bool>? isReversal,
      Value<String>? sortKey,
      Value<String>? chapterListJson,
      Value<int>? lastHistoryTime,
      Value<int>? lastChapterIndex,
      Value<String>? lastChapterLabel,
      Value<int>? lastChapterCount,
      Value<int>? lastImageIndex,
      Value<int>? lastChapterImageCount,
      Value<String>? tags,
      Value<int>? starTime,
      Value<int>? pinTime,
      Value<int>? customOrder,
      Value<int>? rowid}) {
    return MangaInfoCompanion(
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
      lastChapterIndex: lastChapterIndex ?? this.lastChapterIndex,
      lastChapterLabel: lastChapterLabel ?? this.lastChapterLabel,
      lastChapterCount: lastChapterCount ?? this.lastChapterCount,
      lastImageIndex: lastImageIndex ?? this.lastImageIndex,
      lastChapterImageCount:
          lastChapterImageCount ?? this.lastChapterImageCount,
      tags: tags ?? this.tags,
      starTime: starTime ?? this.starTime,
      pinTime: pinTime ?? this.pinTime,
      customOrder: customOrder ?? this.customOrder,
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
      map['update_strategy'] = Variable<int>(
          $MangaInfoTable.$converterupdateStrategy.toSql(updateStrategy.value));
    }
    if (isUpdate.present) {
      map['is_update'] = Variable<bool>(isUpdate.value);
    }
    if (status.present) {
      map['status'] =
          Variable<int>($MangaInfoTable.$converterstatus.toSql(status.value));
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
    if (lastChapterIndex.present) {
      map['last_chapter_index'] = Variable<int>(lastChapterIndex.value);
    }
    if (lastChapterLabel.present) {
      map['last_chapter_label'] = Variable<String>(lastChapterLabel.value);
    }
    if (lastChapterCount.present) {
      map['last_chapter_count'] = Variable<int>(lastChapterCount.value);
    }
    if (lastImageIndex.present) {
      map['last_image_index'] = Variable<int>(lastImageIndex.value);
    }
    if (lastChapterImageCount.present) {
      map['last_chapter_image_count'] =
          Variable<int>(lastChapterImageCount.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MangaInfoCompanion(')
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
          ..write('lastChapterIndex: $lastChapterIndex, ')
          ..write('lastChapterLabel: $lastChapterLabel, ')
          ..write('lastChapterCount: $lastChapterCount, ')
          ..write('lastImageIndex: $lastImageIndex, ')
          ..write('lastChapterImageCount: $lastChapterImageCount, ')
          ..write('tags: $tags, ')
          ..write('starTime: $starTime, ')
          ..write('pinTime: $pinTime, ')
          ..write('customOrder: $customOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MangaDB extends GeneratedDatabase {
  _$MangaDB(QueryExecutor e) : super(e);
  late final $MangaInfoTable mangaInfo = $MangaInfoTable(this);
  late final MangaDao mangaDao = MangaDao(this as MangaDB);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mangaInfo];
}

class $NovelInfoTable extends NovelInfo with TableInfo<$NovelInfoTable, Novel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NovelInfoTable(this.attachedDatabase, [this._alias]);
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
  @override
  List<GeneratedColumn> get $columns => [source, id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'novel_info';
  @override
  VerificationContext validateIntegrity(Insertable<Novel> instance,
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Novel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Novel(
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $NovelInfoTable createAlias(String alias) {
    return $NovelInfoTable(attachedDatabase, alias);
  }
}

class Novel extends DataClass implements Insertable<Novel> {
  final String source;
  final String id;
  const Novel({required this.source, required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['source'] = Variable<String>(source);
    map['id'] = Variable<String>(id);
    return map;
  }

  NovelInfoCompanion toCompanion(bool nullToAbsent) {
    return NovelInfoCompanion(
      source: Value(source),
      id: Value(id),
    );
  }

  factory Novel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Novel(
      source: serializer.fromJson<String>(json['source']),
      id: serializer.fromJson<String>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'source': serializer.toJson<String>(source),
      'id': serializer.toJson<String>(id),
    };
  }

  Novel copyWith({String? source, String? id}) => Novel(
        source: source ?? this.source,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('Novel(')
          ..write('source: $source, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(source, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Novel && other.source == this.source && other.id == this.id);
}

class NovelInfoCompanion extends UpdateCompanion<Novel> {
  final Value<String> source;
  final Value<String> id;
  final Value<int> rowid;
  const NovelInfoCompanion({
    this.source = const Value.absent(),
    this.id = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NovelInfoCompanion.insert({
    required String source,
    required String id,
    this.rowid = const Value.absent(),
  })  : source = Value(source),
        id = Value(id);
  static Insertable<Novel> custom({
    Expression<String>? source,
    Expression<String>? id,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (source != null) 'source': source,
      if (id != null) 'id': id,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NovelInfoCompanion copyWith(
      {Value<String>? source, Value<String>? id, Value<int>? rowid}) {
    return NovelInfoCompanion(
      source: source ?? this.source,
      id: id ?? this.id,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NovelInfoCompanion(')
          ..write('source: $source, ')
          ..write('id: $id, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$NovelDB extends GeneratedDatabase {
  _$NovelDB(QueryExecutor e) : super(e);
  late final $NovelInfoTable novelInfo = $NovelInfoTable(this);
  late final NovelDao novelDao = NovelDao(this as NovelDB);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [novelInfo];
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'aee1557eb39009f2587c9e86af4fa850206aecb0';

/// See also [Database].
@ProviderFor(Database)
final databasePod = NotifierProvider<Database, DatabaseState?>.internal(
  Database.new,
  name: r'databasePod',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Database = Notifier<DatabaseState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
