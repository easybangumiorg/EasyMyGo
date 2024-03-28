
import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart';

class ZipUtils {

  static Future<bool> unzip(String zipPath, String targetPath, {bool override = true}) async {
    try {
      final zipFile = File(zipPath).absolute;
      if(! await zipFile.exists()){
        return false;
      }
      var targetDir = Directory(targetPath);
      if (await targetDir.exists()){
        if(override){
          await targetDir.delete(recursive: true);
        }else{
          return false;
        }
      }
      targetDir = await targetDir.create(recursive: true);

      final stream = InputFileStream(zipFile.path);
      final archive = ZipDecoder().decodeBuffer(stream);
      for (var value in archive) {
        if (value.isFile) {
          final data = value.content as List<int>;
          var f =  File(join(targetPath, value.name));
          f = await f.create(recursive: true);
          await f.writeAsBytes(data, flush: true);
        } else {
          await Directory(join(targetPath, value.name)).create(
            recursive: true,
          );
        }
      }
      return true;
    }catch(e){
      return false;
    }

  }



}