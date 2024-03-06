import 'dart:ffi';

import 'package:easy_book/generated/l10n.dart';
import 'package:easy_book/global/global.dart';
import 'package:easy_book/ui/main/history/history.dart';
import 'package:easy_book/ui/main/home/home.dart';
import 'package:easy_book/ui/main/more/more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'library/library.dart';

/// Created by heyanlin on 2023/9/22.



class MainScreen extends HookConsumerWidget {
  MainScreen({super.key});

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);
    return Column(
      children: [
        Expanded(
            child: PageView(
              onPageChanged: (v) {
                currentIndex.value = v;
              },
              controller: _pageController,
              children: const [
                HomePage(),
                LibraryPage(),
                HistoryPage(),
                MorePage(),
              ],
            )
        ),
        BottomNavigationBar(
          useLegacyColorScheme: false,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: S.of(context).home
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: S.of(context).library
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history),
              label: S.of(context).history
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.more_horiz),
              label: S.of(context).more
            ),
          ],
          currentIndex: currentIndex.value,
          onTap: (v){
            currentIndex.value = v;
            _pageController.jumpToPage(v);
          },
        ),
      ],
    );
  }
}
