

import 'package:easy_mygo/entity/manga/manga_chapter/manga_chapter.dart';
import 'package:easy_mygo/entity/manga/manga_detailed/manga_detailed.dart';
import 'package:easy_mygo/entity/manga/manga_picture/manga_picture.dart';
import 'package:easy_mygo/plugin/component/component.dart';

abstract class MangeReadComponent extends Component {

  MangeReadComponent(super.sourceInfo);

  Future<List<MangaPicture>> getMangaPicture(MangaDetailed detailed, MangaChapter chapter);


}