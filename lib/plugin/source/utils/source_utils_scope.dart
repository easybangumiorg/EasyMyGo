import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/source/utils/buffer_utils.dart';

class SourceUtilsScope {
  final SourceInfo sourceInfo;
  final bufferUtils = BufferUtils();

  SourceUtilsScope(this.sourceInfo);
}
