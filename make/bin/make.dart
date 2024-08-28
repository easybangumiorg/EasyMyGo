import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

void main(List<String> args) async {
  final action = args.firstOrNull;
  switch (action) {
    case "android":
      await pubGet();
      await runnerBuild();
      await makeAndroid();
      break;
    case "ios":
      break;
    case "macos":
      await pubGet();
      await runnerBuild();
      await makeMac();
      break;
    case "windows":
      break;
    case "linux":
      break;
    default:
      print(
          "Action not found！ use dart run make [android|ios|macos|windows|linux]");
  }
}

Future<bool> pubGet() async {
  final process =
      await Process.start("flutter", ["pub", "get"], runInShell: true);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  return exitCode == 0;
}

Future<bool> runnerBuild() async {
  final process = await Process.start("dart", ["run", "build_runner", "build"],
      runInShell: true);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  return exitCode == 0;
}

Future<bool> makeAndroid() async {
  final map = await loadPubspec();
  final String version = map.value["version"];
  final list = version.split("+");
  final versionName = list[0];
  final versionCode = list[1];

  final process = await Process.start(
      "flutter",
      [
        "build",
        "apk",
        "--target=./lib/app.dart",
        "--build-name=$versionName",
        "--build-number=$versionCode",
        "--dart-define=VERSION_NAME=$versionName",
        "--dart-define=VERSION_CODE=$versionCode",
        "--release"
      ],
      runInShell: true);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  return exitCode == 0;
}

Future<bool> makeMac() async {
  final map = await loadPubspec();
  final String version = map.value["version"];
  final list = version.split("+");
  final versionName = list[0];
  final versionCode = list[1];

  final process = await Process.start(
      "flutter",
      [
        "build",
        "macos",
        "--target=./lib/app.dart",
        "--build-name=$versionName",
        "--build-number=$versionCode",
        "--dart-define=VERSION_NAME=$versionName",
        "--dart-define=VERSION_CODE=$versionCode",
        "--release"
      ],
      runInShell: true);
  await stdout.addStream(process.stdout);
  await stderr.addStream(process.stderr);
  final exitCode = await process.exitCode;
  return exitCode == 0;
}

Future<YamlMap> loadPubspec() async {
  final file = File("./pubspec.yaml");
  final yaml = await file.readAsString();
  return await loadYaml(yaml);
}
