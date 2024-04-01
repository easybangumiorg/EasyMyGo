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
import 'package:puppeteer/puppeteer.dart';

/// Created by heyanlin on 2023/9/22.

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return RawMaterialButton(
      onPressed: () async {
        var browser = await puppeteer.launch();
        var page = await browser.newPage();
        await page.goto('https://pub.dev/documentation/puppeteer/latest/',
            wait: Until.networkIdle);
      },
    );
  }
}
