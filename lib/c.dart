
class BuildConfig {
  static const versionName = String.fromEnvironment("VERSION_NAME", defaultValue: "dev");
  static final versionCode = int.tryParse(const String.fromEnvironment("VERSION_CODE", defaultValue: "0")) ?? 0;
}
