import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/page/book_cover/book_cover_page.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/source/controller/source_controller.dart';
import 'package:easy_mygo/ui/common/cover_card.dart';
import 'package:easy_mygo/ui/main/home/page/view_model/home_page_view_model.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math;

class HomeBookPageWidget extends HookConsumerWidget {
  final EasyRefreshController _controller = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );

  final BookCoverPage homePage;

  HomeBookPageWidget({super.key, required this.homePage});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = HomePageViewModel.of(ref, homePage);
    final state = HomePageViewModel.watch(ref, homePage);

    useEffect(() {
      if (state == HomePageState.init) {
        Future.microtask(() async {
          viewModel.firstInit();
          _controller.callRefresh();
        });
      }
      return null;
    }, [state]);


    load(bool isAppend) async {
      bool? isError;
      String? msg;
      if (isAppend) {
        (isError, msg) = await viewModel.loadMore();
      } else {
        (isError, msg) = await viewModel.refresh();
      }
      if (isError == null) {
        return;
      }
      IndicatorResult res = IndicatorResult.fail;
      if (!isError) {
        if (msg == null) {
          res = IndicatorResult.noMore;
        } else {
          res = IndicatorResult.success;
        }
      }
      if (isAppend) {
        _controller.finishLoad(res);
      } else {
        _controller.finishRefresh(res);
      }
    }

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 行间距
        const crossAxisSpacing = 10.0;
        // 列间距
        const mainAxisSpacing = 10.0;
        int crossAxisCount =
            (constraints.maxWidth / (150 + crossAxisSpacing)).ceil();
        // Ensure a minimum count of 1, can be zero and result in an infinite extent
        // below when the window size is 0.
        crossAxisCount = math.max(1, crossAxisCount);
        final itemWidth =
            (constraints.maxWidth - (crossAxisCount - 1) * crossAxisSpacing) /
                crossAxisCount;
        return EasyRefresh(
            controller: _controller,
            header: const ClassicHeader(
              position: IndicatorPosition.locator,
            ),
            footer: const ClassicFooter(
              position: IndicatorPosition.locator,
            ),
            onLoad: () async {
              await load(true);
            },
            onRefresh: () async {
              _controller.resetFooter();
              await load(false);
            },
            child: CustomScrollView(slivers: [
              const HeaderLocator.sliver(),
              SliverPadding(
                  padding: const EdgeInsets.only(
                      left: crossAxisSpacing,
                      top: mainAxisSpacing,
                      right: crossAxisSpacing,
                      bottom: mainAxisSpacing),
                  sliver: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisExtent: BookCoverCard.measureHeight(itemWidth),
                        crossAxisSpacing: crossAxisSpacing,
                        mainAxisSpacing: mainAxisSpacing),
                    itemBuilder: (BuildContext context, int index) {
                      final cover = state.coverList.elementAtOrNull(index);
                      if (cover == null) {
                        return null;
                      }
                      return BookCoverCard(cover: cover);
                    },
                    itemCount: state.coverList.length,
                  )),
              const FooterLocator.sliver(),
            ]));
      },
    );
  }
}
