import 'dart:convert';

dynamic easyJsonDecode(String source,  {dynamic def, dynamic Function(dynamic)? transform}) {
  try {
    final d = jsonDecode(source);
    if (transform != null){
      return transform(d);
    }
    return d;
  } catch (e) {
    if (def == null) {
      rethrow;
    }
    return def;
  }
}

String easyJsonEncode(Object? source) {
  try {
    return jsonEncode(source);
  } catch (e) {
    return "";
  }
}

