import 'package:easy_mygo/entity/manga/manga_cover/manga_cover.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_item.g.dart';
part 'search_item.freezed.dart';

@freezed
class SearchItem with _$SearchItem {

  factory SearchItem({
    // 当页结果
    required List<MangaCover> data,

    // 下一页的 key，为 null 则代表没有下一页
    @JsonKey(name: "next_key") required  String? nextKey,

  }) = _SearchItem;

  factory SearchItem.fromJson(Map<String, Object?> json) =>
      _$SearchItemFromJson(json);
}
