
import 'package:easy_mygo/entity/source/source_info/source_info.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/manga_search_component.dart';
import 'package:easy_mygo/plugin/component/api/manga/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/novel/search/novel_search_component.dart';
import 'package:easy_mygo/plugin/component/api/novel/search/resp/search_resp.dart';
import 'package:easy_mygo/plugin/component/api/payload/component_payload.dart';
import 'package:easy_mygo/plugin/component/core/js/js_component.dart';
import 'package:easy_mygo/plugin/component/core/js/utils/js_component_utils.dart';
import 'package:easy_mygo/plugin/source/loader/js/js_source_utils.dart';
import 'package:flutter_js/javascript_runtime.dart';

class JsNovelSearchComponent extends NovelSearchComponent implements JsComponent {



  static const methodNameSearch = "novel_search_search";
  static const _performMethodSearch = "perform_novel_search_search";

  static const methodNameInitKey = "novel_search_init_key";

  static final _performSearchJSCode = JsComponentUtils.getPerformFunctionJsCode(_performMethodSearch, methodNameSearch, 1);

  late JavascriptRuntime _runtime;

  JsNovelSearchComponent({
    required SourceInfo sourceInfo,
    required JavascriptRuntime jsRuntime,
  }) : super(sourceInfo) {
    _runtime = jsRuntime;
  }

  @override
  Future<String> getInitKey(String key) async {
    try{
      final res = await JsComponentUtils.evaluateAsync(_runtime,
          "$methodNameInitKey($key)");
      return res.stringResult;
    }catch(e){
      return "";
    }
  }

  @override
  Future<NovelSearchResp> search(String key, String keyword) async {
    final res = await JsComponentUtils.evaluateAsync(_runtime,
        "$_performMethodSearch($key,$keyword)");
    final json = await JsComponentUtils.jsonDecodeWithCheck(_runtime, res);
    final rt = NovelSearchResp.fromJson(json);
    final respTemp = rt.copyWith(
      data: rt.data?.map((e) => e.copyWith(source: sourceInfo.identify)).toList()
    );

    if (respTemp.data == null && respTemp.payload.code == 0) {
      throw ComponentPayload(
          code: ComponentPayload.codeParseResultError,
          msg: "parse error",
          raw: res.rawResult);
    }
    return respTemp.copyWith(
        payload: respTemp.payload.copyWith(
          raw: res.rawResult,
        )
    );
  }

  @override
  Future<bool> isAvailable() async {
    return JsComponentUtils.checkFunction(_runtime, [methodNameSearch, methodNameInitKey], [_performMethodSearch]);
  }

  @override
  Future<void> onLoad() async {
    await _runtime.evaluateAsync(_performSearchJSCode);
  }



}