import 'package:easy_mygo/entity/novel/novel_summary/novel_summary.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/novel/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class NovelDetailedComponent extends Component {
  NovelDetailedComponent(super.sourceInfo);

  Future<NovelDetailedResp> getNovelDetailed(NovelSummary summary);

  Future<NovelDetailedResp> performGetNovelDetailed(
      NovelSummary summary) async {
    try {
      return await getNovelDetailed(summary);
    } catch (e) {
      if (e is ComponentPayload) {
        return NovelDetailedResp(payload: e);
      } else {
        return NovelDetailedResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
