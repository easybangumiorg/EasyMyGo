

import 'dart:collection';

class BufferUtils {

  var counter = 0;
  final HashMap<String, String> _buffer = HashMap();

  String add(String value){
    final key = "buffer@${counter ++}";
    _buffer[key] = value;
    return key;
  }

  String? get(String key){
    return _buffer[key];
  }

  void clean(){
    counter = 0;
    _buffer.clear();
  }



}