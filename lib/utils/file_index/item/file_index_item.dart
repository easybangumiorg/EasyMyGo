import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_index_item.g.dart';
part 'file_index_item.freezed.dart';


@freezed
class FileIndexItem with _$FileIndexItem {
  factory FileIndexItem({
    // 文件相对路径 ["a", "b"] => "a/b"
    required List<String> path,
    // 文件大小
    required int size,
  }) = _FileIndexItem;

  factory FileIndexItem.fromJson(Map<String, Object?> json) =>
      _$FileIndexItemFromJson(json);
}