import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';


enum SourceState {
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
    this.state = SourceState.loaded,
    this.errorMsg = "",
  });

  SourceData copyWith({
    SourceInfo? info,
    List<Component>? components,
    SourceState? state,
    String? errorMsg,
  }){
      return SourceData(
          info: info ?? this.info,
          components: components ?? this.components,
          state: state ?? this.state,
          errorMsg: errorMsg ?? this.errorMsg,
      );
  }

}
