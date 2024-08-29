import 'package:easy_mygo/l10n/l10n.dart';
import 'package:easy_mygo/ui/main/history/history.dart';
import 'package:easy_mygo/ui/main/home/home.dart';
import 'package:easy_mygo/ui/main/library/library.dart';
import 'package:easy_mygo/ui/main/more/more.dart';
import 'package:easy_mygo/utils/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Created by heyanlin on 2023/9/22.
class PageData {
  final Widget icon;
  final String Function(BuildContext) labelGetter;
  final Widget page;

  PageData({required this.icon, required this.labelGetter, required this.page});
}

class MainScreen extends HookConsumerWidget {
  MainScreen({super.key});

  final PageController _pageController = PageController();

  final pageDataList = [
    PageData(
        icon: const Icon(Icons.home),
        labelGetter: (c) => S.of(c).home,
        page: const HomePage()),
    PageData(
        icon: const Icon(Icons.book),
        labelGetter: (c) => S.of(c).library,
        page: const LibraryPage()),
    PageData(
        icon: const Icon(Icons.history),
        labelGetter: (c) => S.of(c).history,
        page: const HistoryPage()),
    PageData(
        icon: const Icon(Icons.more_horiz),
        labelGetter: (c) => S.of(c).more,
        page: const MorePage()),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);
    final pageView = PageView(
        onPageChanged: (v) {
          currentIndex.value = v;
        },
        controller: _pageController,
        children: [for (final pageData in pageDataList) pageData.page]);
    if (PlatformUtils.isMobile) {
      return Column(
        children: [
          Expanded(child: pageView),
          BottomNavigationBar(
            useLegacyColorScheme: false,
            items: [
              for (final pageData in pageDataList)
                BottomNavigationBarItem(
                    icon: pageData.icon, label: pageData.labelGetter(context))
            ],
            currentIndex: currentIndex.value,
            onTap: (v) {
              currentIndex.value = v;
              _pageController.jumpToPage(v);
            },
          ),
        ],
      );
    } else {
      return Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            destinations: [
              for (final pageData in pageDataList)
                NavigationRailDestination(
                    icon: pageData.icon,
                    label: Text(pageData.labelGetter(context)))
            ],
            selectedIndex: currentIndex.value,
            onDestinationSelected: (v) {
              currentIndex.value = v;
              _pageController.jumpToPage(v);
            },
          ),
          Expanded(child: pageView)
        ],
      );
    }
  }
}
