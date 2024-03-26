import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_picture/manga_picture.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/manga/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class MangeReadComponent extends Component {
  MangeReadComponent(super.sourceInfo);

  /// throws: ComponentPayload
  Future<ReadResp> getMangaPicture(
      MangaDetailed detailed, MangaChapter chapter);

  Future<ReadResp> performGetMangaPicture(
      MangaDetailed detailed, MangaChapter chapter) async {
    try {
      return await getMangaPicture(detailed, chapter);
    } catch (e) {
      if (e is ComponentPayload) {
        return ReadResp(payload: e);
      } else {
        return ReadResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
