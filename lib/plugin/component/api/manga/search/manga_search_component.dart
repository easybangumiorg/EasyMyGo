

import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangeSearchComponent extends Component {

  MangeSearchComponent(super.sourceInfo);

  Future<String> getInitKey(String key);

  Future<SearchResp> getMangaDetailed(String key, String keyword);

  Future<SearchResp> performGetMangaDetailed(String key, String keyword) async {
    try {
      return await getMangaDetailed(key, keyword);
    } catch (e) {
      if (e is ComponentPayload) {
        return SearchResp(payload: e);
      } else {
        return SearchResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }

}