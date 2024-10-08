import 'dart:convert';

import 'package:easy_mygo/repository/book_cover/page/novel_cover_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/ui/main/home/page/home_book_page.dart';
import 'package:easy_mygo/ui/main/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Created by heyanlin on 2023/9/22.

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = HomeViewModel.watch(ref);
    final sourceBundle = SourceBundle.of(ref);

    final component = sourceBundle.getNovelHomeList().firstOrNull;
    if (component != null) {
      return Container(
        color: Theme.of(context).colorScheme.surface,
        child: HomeBookPageWidget(
          homePage: NovelBookHomeCoverPage(
            component,
            NovelHomePage(id: "", label: ""),
          ),
        ),
      );
    }
    return Text(jsonEncode(state));
  }
}
