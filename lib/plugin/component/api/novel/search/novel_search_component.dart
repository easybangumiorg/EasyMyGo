import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/novel/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class NovelSearchComponent extends Component {
  NovelSearchComponent(super.sourceInfo);

  Future<String> getInitKey(String key);

  Future<NovelSearchResp> search(String key, String keyword);

  Future<NovelSearchResp> performSearch(String key, String keyword) async {
    try {
      return await search(key, keyword);
    } catch (e) {
      if (e is ComponentPayload) {
        return NovelSearchResp(payload: e);
      } else {
        return NovelSearchResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
