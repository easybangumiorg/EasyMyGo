
import 'package:path_provider/path_provider.dart';

class EasyConstant {
  static const versionName = String.fromEnvironment("VERSION_NAME", defaultValue: "dev");
  static final versionCode = int.tryParse(const String.fromEnvironment("VERSION_CODE", defaultValue: "0")) ?? 0;

  static final applicationPath = Future(() async {
    return await getApplicationSupportDirectory();
  });
}
