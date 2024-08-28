import 'package:easy_mygo/entity/novel/novel_detailed/novel_detailed.dart';
import 'package:easy_mygo/entity/novel/novel_volume/novel_volume.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/api/novel/read/resp/read_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';

abstract class NovelReadComponent extends Component {
  NovelReadComponent(super.sourceInfo);

  /// throws: ComponentPayload
  Future<NovelReadResp> getNovelChapter(
      NovelDetailed detailed, NovelVolume volume);

  Future<NovelReadResp> performGetNovelChapter(
      NovelDetailed detailed, NovelVolume volume) async {
    try {
      return await getNovelChapter(detailed, volume);
    } catch (e) {
      if (e is ComponentPayload) {
        return NovelReadResp(payload: e);
      } else {
        return NovelReadResp(
            payload: ComponentPayload(
                code: ComponentPayload.codeCallError,
                msg: e.toString(),
                raw: e));
      }
    }
  }
}
