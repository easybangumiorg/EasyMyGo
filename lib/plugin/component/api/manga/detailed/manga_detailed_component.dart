import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangaDetailedComponent extends Component {
  MangaDetailedComponent(super.sourceInfo);

  Future<MangaDetailedResp> getMangaDetailed(MangaSummary summary);

  Future<MangaDetailedResp> performGetMangaDetailed(
      MangaSummary summary) async {
    try {
      return await getMangaDetailed(summary);
    } catch (e) {
      if (e is ComponentPayload) {
        return MangaDetailedResp(payload: e);
      } else {
        return MangaDetailedResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
