

import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_summary/manga_summary.dart';
import 'package:easy_mygo/plugin/component/component.dart';

abstract class MangeDetailedComponent extends Component {

  MangeDetailedComponent(super.sourceInfo);

  Future<MangaDetailed> getMangaDetailed(MangaSummary summary);

}