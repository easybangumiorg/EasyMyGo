import 'package:easy_mygo/utils/hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'source_config_controller.freezed.dart';

part 'source_config_controller.g.dart';

/// 本地的源配置

@freezed
class SourceConfigItem with _$SourceConfigItem {
  static final List<SourceConfigItem> none = [];

  factory SourceConfigItem({
    required String key,
    required String package,
    @Default(true) bool enabled,
    @Default(999) int order,
  }) = _SourceConfigItem;

  factory SourceConfigItem.fromJson(Map<String, dynamic> json) =>
      _$SourceConfigItemFromJson(json);
}

extension SourceConfigItemExt on SourceConfigItem {
  static final _identifyValues = Expando<String>();

  String get identify {
    return _identifyValues[this] ??= "$package-|-$key";
  }
}

@Riverpod()
class SourceConfigController extends _$SourceConfigController {
  static const sourceConfigList = "source_config_list";

  static SourceConfigController of(dynamic ref) =>
      ref.watch(sourceConfigControllerPod.notifier);

  @override
  List<SourceConfigItem> build() {
    return SourceConfigItem.none;
  }

  late Future<void> _init;

  SourceConfigController() {
    _init = Future.microtask(() {
      _innerInit();
    });
  }

  Future<void> _innerInit() async {
    final box = await HiveBox.sourceConfig();
    final configListMap = await box.getSingle() ?? {};
    final list = configListMap[sourceConfigList] ?? [];
    await box.close();
    if (list is Iterable) {
      final li = list.map((e) => SourceConfigItem.fromJson(e)).toList();
      state = li;
    } else {
      state = [];
    }
  }

  Future<void> setSourceConfig(List<SourceConfigItem> list) async {
    await _init;
    final box = await HiveBox.sourceConfig();
    state = list;
    await box
        .putSingle({sourceConfigList: list.map((e) => e.toJson()).toList()});
    await box.close();
  }
}
