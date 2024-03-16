

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/plugin/component/component.dart';
import 'package:easy_mygo/plugin/component/manga/detailed/resp/detailed_resp.dart';

abstract class MangeDetailedComponent extends Component {

  MangeDetailedComponent(super.sourceInfo);

  Future<DetailedResp> getMangaDetailed(MangaSummary summary);


}