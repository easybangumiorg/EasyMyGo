

import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangaSearchComponent extends Component {

  MangaSearchComponent(super.sourceInfo);

  Future<String> getInitKey(String key);

  Future<MangaSearchResp> search(String key, String keyword);

  Future<MangaSearchResp> performSearch(String key, String keyword) async {
    try {
      return await search(key, keyword);
    } catch (e) {
      if (e is ComponentPayload) {
        return MangaSearchResp(payload: e);
      } else {
        return MangaSearchResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }

}