import 'dart:collection';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/inner/test/test_inner_source.dart';

class InnerSourceFactory {
  static const innerExtensionPackage = "com.heyanle.easymygo.extension.inner";
  static final innerExtensionInfo = ExtensionInfo(
      package: innerExtensionPackage,
      label: "内置源",
      versionName: EasyConstant.versionName,
      versionCode: EasyConstant.versionCode,
      /// 内置源不用检查库版本
      libVersion: ExtensionLoader.libVersionMax,
      loadType: ExtensionLoaderType.inner,
      path: "",
      readme: "纯纯 Mygo 内置源"
  );

  static final test = TestMangaSource();

  // 在这里添加
  static final _innerSources = <String, InnerSource>{
    test.key: test
  };

  static InnerSource? of(String key) {
    return _innerSources[key];
  }

  static List<String> getKeys() {
    return _innerSources.keys.toList();
  }
}

abstract class InnerSource {
  String key;
  String label;
  String versionName;
  int versionCode;
  String description;
  SourceType type;

  // 一般为 assets 里的文件
  String header;

  InnerSource({
    required this.key,
    required this.label,
    required this.versionName,
    required this.versionCode,
    required this.type,
    this.description = "",
    this.header = "",
  });

  List<Component> getComponentList(SourceInfo sourceInfo);
}
