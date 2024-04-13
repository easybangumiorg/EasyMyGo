import 'dart:convert';

import 'package:easy_mygo/c.dart';
import 'package:easy_mygo/entity/extension/extension_info/extension_info.dart';
import 'package:easy_mygo/entity/source/source_data/source_data.dart';
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/search/js_manga_search_component.dart';
import 'package:easy_mygo/plugin/extension/loader/extension_loader.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/plugin/source/loader/source_loader.dart';
import 'package:easy_mygo/ui/main/home/page/novel/novel_home_page.dart';
import 'package:easy_mygo/ui/main/home/view_model/home_view_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:puppeteer/puppeteer.dart';

/// Created by heyanlin on 2023/9/22.

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final state = HomeViewModel.watch(ref);
    final sourceBundle = SourceBundle.of(ref);
    final component = sourceBundle.getNovelHomeList().firstOrNull;
    if (component != null){
      return NovelHomePageWidget(
        homePage: NovelHomePage(id: "", label: ""),
        component: component,
      );
    }
    return Text(jsonEncode(state));
  }
}
