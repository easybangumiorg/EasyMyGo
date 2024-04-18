import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';


abstract class BookCoverPage {
  Future<String> initKey();

  Future<(ComponentPayload payload, List<BookCover>, String? nextKey)>
      loadPageData(String key);
}
