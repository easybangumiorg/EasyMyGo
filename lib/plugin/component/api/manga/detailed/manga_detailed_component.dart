

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/detailed/resp/detailed_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangeDetailedComponent extends Component {

  MangeDetailedComponent(super.sourceInfo);

  Future<DetailedResp> getMangaDetailed(MangaSummary summary);

  Future<DetailedResp> performGetMangaDetailed(MangaSummary summary) async {
    try {
      return await getMangaDetailed(summary);
    } catch (e) {
      if (e is ComponentPayload) {
        return DetailedResp(payload: e);
      } else {
        return DetailedResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }





}