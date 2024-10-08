import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/core/js/js_component.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';

class JsSourceLoader extends SourceLoader {
  /// 解析 js 文件元数据
  /// @key <key>
  /// @label <label>
  /// @version_name <version_name>
  /// @version_code <version_code>
  /// [@description <description>]
  ///
  @override
  Future<SourceInfo?> parse(String fromExtension, String filePath) async {
    final file = File(filePath);
    if (!await file.exists()) {
      return null;
    }
    final readStream = file.openRead();
    final lines = utf8.decoder.bind(readStream).transform(const LineSplitter());
    final HashMap<String, dynamic> map = HashMap();

    await for (var value in lines) {
      if (!value.startsWith("//")) {
        break;
      }
      final l = value.replaceAll("//", "").trim();
      final ss = l.split(" ");
      if (ss.length < 2) {
        return null;
      }
      final key = ss[0].replaceFirst("@", "").trim();
      final val = ss.sublist(1).join(" ");
      if (key == "version_code") {
        map[key] = int.tryParse(val);
      } else {
        map[key] = val;
      }
    }

    map["from_package"] = fromExtension;
    map["loader_type"] = SourceLoaderType.js.name;
    map["path"] = filePath;
    return SourceInfo.fromJson(map);
  }

  @override
  SourceLoaderType get type => SourceLoaderType.js;

  @override
  Future<SourceData> load(SourceInfo sourceInfo) async {
    try {
      final runtime = JsSourceUtils.newRuntime(sourceInfo);
      final file = File(sourceInfo.path);
      if (!await file.exists()) {
        return SourceData(
            info: sourceInfo, state: SourceState.error, errorMsg: "文件不存在");
      }
      final content = await file.readAsString();
      await runtime.evaluateAsync(content);

      final List<Component> componentList = [];
      final List<JsComponent> jsComponentList =
          JsComponent.create(sourceInfo, runtime);
      for (var value in jsComponentList) {
        if (await value.isAvailable()) {
          await value.onLoad();
          componentList.add(value);
        }
      }

      return SourceData(
          info: sourceInfo,
          state: SourceState.loaded,
          components: componentList);
    } catch (e) {
      return SourceData(
          info: sourceInfo, state: SourceState.error, errorMsg: e.toString());
    }
  }
}
