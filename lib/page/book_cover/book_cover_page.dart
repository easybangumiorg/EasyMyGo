import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/novel_home_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/home/page/home_page.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

import 'manga_cover_page.dart';
import 'novel_cover_page.dart';

abstract class BookCoverPage {

  Future<String> initKey();

  Future<(ComponentPayload payload, List<BookCover>, String? nextKey)>
      loadPageData(String key);
}