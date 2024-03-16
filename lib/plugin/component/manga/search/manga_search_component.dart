

import 'package:easy_mygo/plugin/component/component.dart';
import 'package:easy_mygo/plugin/component/manga/search/item/search_item.dart';

abstract class MangeSearchComponent extends Component {

  MangeSearchComponent(super.sourceInfo);

  Future<String> getInitKey(String key);

  Future<SearchItem> getMangaDetailed(String key, String keyword);

}