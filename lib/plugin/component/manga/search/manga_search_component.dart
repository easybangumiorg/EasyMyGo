

import 'package:easy_mygo/plugin/component/component.dart';
import 'package:easy_mygo/plugin/component/manga/search/resp/search_resp.dart';

abstract class MangeSearchComponent extends Component {

  MangeSearchComponent(super.sourceInfo);

  Future<String> getInitKey(String key);

  Future<SearchResp> getMangaDetailed(String key, String keyword);

}