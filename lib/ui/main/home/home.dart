import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/search/js_manga_search_component.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Created by heyanlin on 2023/9/22.

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return RawMaterialButton(
      onPressed: () async {
        final loader = ExtensionLoader.of(ExtensionLoaderType.mygopack);
        final sourceLoader = SourceLoader.of(SourceLoaderType.js);
        FilePickerResult? result = await FilePicker.platform.pickFiles();

        if (result != null) {
          final info = await loader.parse(result.files.single.path!);
          if (info != null) {
            final extensionData = await loader.load(info);
            if (extensionData != null) {
              for (var value in extensionData.sources!) {
                final SourceData ddd =
                    await sourceLoader.load(info.package, value);
                for (var value1 in ddd.components!) {
                  if (value1 is JsMangaSearchComponent) {
                    print(await value1.performSearch("1", ""));
                    print(await value1.performSearch("2", ""));
                    print(await value1.performSearch("3", ""));
                  }
                }
              }
            }
          }
        } else {
          // User canceled the picker
        }
      },
    );
  }
}
