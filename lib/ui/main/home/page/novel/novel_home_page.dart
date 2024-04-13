import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/ui/common/cover_card.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NovelHomePageState {
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
  final NovelHomePage homePage;
  final NovelHomeComponent component;

  const NovelHomePageWidget(
      {required this.homePage, required this.component, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final novelHomePageState = useState<NovelHomePageState>(
        NovelHomePageState(List.empty(), homePage.initKey));
    final nextKey = novelHomePageState.value.nextKey;
    final coverList = novelHomePageState.value.coverList;

    onLoad(String? key, bool isAppend) async {
      if (nextKey == null) {
        return IndicatorResult.noMore;
      }
      final resp = await component.loadPageData(homePage, nextKey);
      if (resp.payload.isError) {
        return IndicatorResult.fail;
      } else {
        final data = resp.data;
        final nk = resp.nextKey;
        if (nk == null || data == null || data.isEmpty) {
          return IndicatorResult.noMore;
        }
        if (isAppend) {
          novelHomePageState.value = novelHomePageState.value
              .copyWithAppend(coverList: data, nextKey: nk);
        } else {
          novelHomePageState.value = NovelHomePageState(data, nk);
        }

        return IndicatorResult.success;
      }
    }

    return EasyRefresh(
        header: const MaterialHeader(position: IndicatorPosition.locator,),
        footer: const MaterialFooter(position: IndicatorPosition.locator,),
        onLoad: () async {
          return await onLoad(nextKey, true);
        },
        onRefresh: () async {
          novelHomePageState.value =
              NovelHomePageState(List.empty(), homePage.initKey);
          return await onLoad(homePage.initKey, false);
        },
        child: CustomScrollView(slivers: [
          const HeaderLocator.sliver(),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200),
            itemBuilder: (BuildContext context, int index) {
              final cover = coverList.elementAtOrNull(index);
              if (cover == null){
                return null;
              }
              return NovelCoverCard(cover: cover);
            },
            itemCount: coverList.length,
          ),
          const FooterLocator.sliver(),
        ]));
  }
}
