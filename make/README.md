# 构建器

Ayala评价：完全没有必要的操作，可以考虑使用Github Actions代替

一个简单的构建过程：

```sh
flutter pub get
dart run build_runner build
flutter build apk --target=./lib/app.dart --release
flutter build macos --target=./lib/app.dart --release
flutter build windows --target=./lib/app.dart --release
```