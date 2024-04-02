
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/component.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/detailed/js_manga_detailed_component.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/home/js_manga_home_component.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/read/js_manga_read_component.dart';
import 'package:easy_mygo/plugin/component/core/js/manga/search/js_manga_search_component.dart';
import 'package:easy_mygo/plugin/component/core/js/novel/detailed/js_novel_detailed_component.dart';
import 'package:easy_mygo/plugin/component/core/js/novel/home/js_novel_home_component.dart';
import 'package:easy_mygo/plugin/component/core/js/novel/read/js_novel_read_component.dart';
import 'package:easy_mygo/plugin/component/core/js/novel/search/js_novel_search_component.dart';
import 'package:flutter_js/flutter_js.dart';


abstract class JsComponent extends Component {

  static List<JsComponent> create( SourceInfo sourceInfo,JavascriptRuntime runtime) => [
    JsMangaHomeComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsMangaDetailedComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsMangaSearchComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsMangaReadComponent(sourceInfo: sourceInfo, jsRuntime: runtime),

    JsNovelHomeComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsNovelDetailedComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsNovelSearchComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
    JsNovelReadComponent(sourceInfo: sourceInfo, jsRuntime: runtime),
  ];

  JsComponent(super.sourceInfo);


  Future<bool> isAvailable();

  Future<void> onLoad();

}