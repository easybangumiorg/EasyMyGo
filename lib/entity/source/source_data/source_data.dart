import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';


enum SourceState {
  loading,
  none,
  loaded,
  error
}

class SourceData {
  SourceInfo info;
  List<Component>? components;
  SourceState state;
  String errorMsg;

  SourceData({
    required this.info,
    this.components,
    this.state = SourceState.none,
    this.errorMsg = "",
  });

}
