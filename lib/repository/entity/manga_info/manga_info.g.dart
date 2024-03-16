// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaInfoImpl _$$MangaInfoImplFromJson(Map<String, dynamic> json) =>
    _$MangaInfoImpl(
      key: json['key'] as String,
      id: json['id'] as String,
      label: json['label'] as String,
      cover: json['cover'] as String,
      intro: json['intro'] as String,
      jumpUrl: json['jumpUrl'] as String,
      isDetailedLoad: json['isDetailedLoad'] as bool? ?? false,
      genre: json['genre'] as String? ?? "",
      description: json['description'] as String? ?? "",
      updateStrategy: json['updateStrategy'] as int? ?? 0,
      isUpdate: json['isUpdate'] as bool? ?? false,
      status: json['status'] as int? ?? 0,
      lastUpdateTime: json['lastUpdateTime'] as int? ?? 0,
      sourceName: json['sourceName'] as String? ?? "",
      isReversal: json['isReversal'] as bool? ?? false,
      sortKey: json['sortKey'] as String? ?? "",
      chapterListTemp: (json['chapterListTemp'] as List<dynamic>?)
              ?.map((e) => MangaChapter.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastHistoryTime: json['lastHistoryTime'] as int? ?? 0,
      lastReadChapterCount: json['lastReadChapterCount'] as int? ?? 0,
      lastReadChapterId: json['lastReadChapterId'] as String? ?? "",
      lastReadChapterName: json['lastReadChapterName'] as String? ?? "",
      lastReadChapterPageCount: json['lastReadChapterPageCount'] as int? ?? 0,
      lastReadChapterPageIndex: json['lastReadChapterPageIndex'] as int? ?? 0,
      starTime: json['starTime'] as int? ?? 0,
      pinTime: json['pinTime'] as int? ?? -1,
      tagsId: (json['tagsId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      customOrder: json['customOrder'] as String? ?? "",
    );

Map<String, dynamic> _$$MangaInfoImplToJson(_$MangaInfoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id': instance.id,
      'label': instance.label,
      'cover': instance.cover,
      'intro': instance.intro,
      'jumpUrl': instance.jumpUrl,
      'isDetailedLoad': instance.isDetailedLoad,
      'genre': instance.genre,
      'description': instance.description,
      'updateStrategy': instance.updateStrategy,
      'isUpdate': instance.isUpdate,
      'status': instance.status,
      'lastUpdateTime': instance.lastUpdateTime,
      'sourceName': instance.sourceName,
      'isReversal': instance.isReversal,
      'sortKey': instance.sortKey,
      'chapterListTemp': instance.chapterListTemp,
      'lastHistoryTime': instance.lastHistoryTime,
      'lastReadChapterCount': instance.lastReadChapterCount,
      'lastReadChapterId': instance.lastReadChapterId,
      'lastReadChapterName': instance.lastReadChapterName,
      'lastReadChapterPageCount': instance.lastReadChapterPageCount,
      'lastReadChapterPageIndex': instance.lastReadChapterPageIndex,
      'starTime': instance.starTime,
      'pinTime': instance.pinTime,
      'tagsId': instance.tagsId,
      'customOrder': instance.customOrder,
    };
