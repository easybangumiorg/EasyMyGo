import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/ui/common/cover_card.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;

class NovelHomePageState {
  static NovelHomePageState init = NovelHomePageState(List.empty(), null);

  final List<NovelCover> coverList;
  final String? nextKey;

  NovelHomePageState(this.coverList, this.nextKey);

  NovelHomePageState copyWithAppend(
      {List<NovelCover>? coverList, String? nextKey}) {
    if (coverList == null) {
      return NovelHomePageState(this.coverList, nextKey);
    }
    final List<NovelCover> n = [];
    n.addAll(this.coverList);
    n.addAll(coverList);
    return NovelHomePageState(n, nextKey);
  }
}

class NovelHomePageWidget extends HookConsumerWidget {
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final NovelHomePage homePage;
  final NovelHomeComponent component;

  NovelHomePageWidget(
      {required this.homePage, required this.component, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO 应该要搬到 ViewModel，不然无法复用
    final novelHomePageState =
        useState<NovelHomePageState>(NovelHomePageState.init);

    onLoad(String? key, bool isAppend) async {
      if (key == null) {
        return IndicatorResult.noMore;
      }
      final resp = await component.loadPageData(homePage, key);
      if (resp.payload.isError) {
        return IndicatorResult.fail;
      } else {
        final data = resp.data;
        final nk = resp.nextKey;

        if (isAppend) {
          novelHomePageState.value = novelHomePageState.value
              .copyWithAppend(coverList: data, nextKey: nk);
        } else {
          novelHomePageState.value = NovelHomePageState(data??[], nk);
        }
        if (nk == null || data == null || data.isEmpty) {
          return IndicatorResult.noMore;
        }
        return IndicatorResult.success;
      }
    }

    useEffect(() {
      if (novelHomePageState.value == NovelHomePageState.init) {
        Future.microtask(() async {
          novelHomePageState.value =
              NovelHomePageState(List.empty(), homePage.initKey);
          _controller.callRefresh();
        });
      }
      return null;
    }, [novelHomePageState.value]);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        const crossAxisSpacing = 20.0;
        int crossAxisCount = (constraints.maxWidth / (150 + crossAxisSpacing)).ceil();
        // Ensure a minimum count of 1, can be zero and result in an infinite extent
        // below when the window size is 0.
        crossAxisCount = math.max(1, crossAxisCount);
        final itemWidth = (constraints.maxWidth - (crossAxisCount-1)*crossAxisSpacing) / crossAxisCount;
        return EasyRefresh(
            controller: _controller,
            header: const ClassicHeader(
              position: IndicatorPosition.locator,
            ),
            footer: const ClassicFooter(
              position: IndicatorPosition.locator,
            ),
            onLoad: () async {
              final res = await onLoad(novelHomePageState.value.nextKey, true);
              _controller.finishLoad(res);
              //_controller.resetFooter();
            },
            onRefresh: () async {
              _controller.resetFooter();
              novelHomePageState.value =
                  NovelHomePageState(List.empty(), homePage.initKey);
              final res = await onLoad(homePage.initKey, false);
              _controller.finishRefresh(res);

            },
            child: CustomScrollView(slivers: [
              const HeaderLocator.sliver(),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisExtent: NovelCoverCard.measureHeight(itemWidth),
                    crossAxisSpacing: crossAxisSpacing,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final cover = novelHomePageState.value.coverList.elementAtOrNull(index);
                  if (cover == null) {
                    return null;
                  }
                  return NovelCoverCard(cover: cover);
                },
                itemCount: novelHomePageState.value.coverList.length,
              ),
              const FooterLocator.sliver(),
            ]));
      },
    );
  }
}
