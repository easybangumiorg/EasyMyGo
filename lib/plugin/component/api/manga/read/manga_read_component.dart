import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangaReadComponent extends Component {
  MangaReadComponent(super.sourceInfo);

  /// throws: ComponentPayload
  Future<MangaReadResp> getMangaPicture(
      MangaDetailed detailed, MangaChapter chapter);

  Future<MangaReadResp> performGetMangaPicture(
      MangaDetailed detailed, MangaChapter chapter) async {
    try {
      return await getMangaPicture(detailed, chapter);
    } catch (e) {
      if (e is ComponentPayload) {
        return MangaReadResp(payload: e);
      } else {
        return MangaReadResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
