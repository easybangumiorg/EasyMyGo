import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:easy_book/db/manga/manga_db.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

LazyDatabase openConnection(String name) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, name));
    return NativeDatabase(file);
  });
}


enum UpdateStrategy {
  always, onlyStrict, never
}

enum Status {
  unknown, ongoing, completed
}
