# easy_mygo

this is easy book

## 插件加载

插件分为 Extension，Source，Component 三层

### Extension

Extension 是插件的抽象，一个插件可以有多个源，一般一个插件对应一个文件。  
目前支持两种文件：纯 js 和 mygopack（具体压缩格式待定）  
最终会根据 LoaderType 使用特定 Loader 加载成 SourceInfo  

插件的实体如下：
```dart
enum ExtensionLoaderType {
  // 单个纯 js 文件
  js,
  // mygo 包,包里的文件格式交给 loader 去处理了
  mygopack
}

@freezed
class ExtensionInfo with _$ExtensionInfo {
  factory ExtensionInfo({
    // 包名唯一
    required String package,
    required String label,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'version_code') required int versionCode,
    @JsonKey(name: 'lib_version') required int libVersion,
    @JsonKey(name: 'extension_load_type') required ExtensionLoaderType loadType,
    required String path,
    // 头像 url，本地文件就 file:// 开头
    @Default("") String cover,
    @Default("") String readme,
  }) = _ExtensionInfo;

  factory ExtensionInfo.fromJson(Map<String, Object?> json) =>
      _$ExtensionInfoFromJson(json);
}
```

### Source

Source 是一个源的抽象  
一个源要么是漫画，要么是小说。如果是爬的同一个目标可以将两个源打包成一个插件。  
最终会根据 LoaderType 使用特定的 Loader 加载成各种 Component  

源的实体如下：
```dart
enum SourceType { manga, novel }
enum SourceLoaderType { js }

@freezed
class SourceInfo with _$SourceInfo {
  factory SourceInfo({
    // 单个 Extension 里的所有 Source 的 key 需要唯一
    required String key,
    // 所在 Extension 的包名
    @JsonKey(name: 'from_package') required String fromPackage,
    required String label,
    required SourceType type,
    @JsonKey(name: 'version_name') required String versionName,
    @JsonKey(name: 'version_code') required int versionCode,
    required String path,
    @JsonKey(name: 'loader_type') required SourceLoaderType loaderType,
    @Default("") String description,
  }) = _SourceInfo;

  factory SourceInfo.fromJson(Map<String, dynamic> json) =>
      _$SourceInfoFromJson(json);
}

extension SourceInfoExt on SourceInfo {
  static final _identifyValues = Expando<String>();

  String get identify {
    return _identifyValues[this] ??= "$key-|-$key-|-${type.name}";
  }
}

```

### Component

最终的业务承载，目前有以下四种业务：

* home 首页数据加载
* detailed 详情页数据加载，包括详情数据和章节数据
* read 获取最终的小说文本或漫画图片
* search 搜索

以上四种业务分别有小说和漫画两种接口共 8 个接口，最终由业务调用。  
可以看 ```lib/plugin/component/api```  相关代码   

### SourceBundle

插件业务对外暴露的一个 final 类型
* 根据 Component 的类型维护多个 map，其中 key 由插件 package 和 源 key 决定。
* 同时维护源和配置（排序，开关）最终一起暴露给其他业务。

## 开发规范（持续更新中）

1、导入需要写全路径，如：

```dart
import 'package:easy_mygo/utils/hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
```
2、本项目大部分使用注解 + build_runner 的形式，对此有以下规定：

* 对应代码开发后需要再项目根目录运行 `dart run build_runner build` 指令生成对应的代码
* 生成的代码文件 (.g.dart) 或者 (.freezed.dart) 需要手动调用 git add 添加后 push 到仓库
* 生成的代码文件与原文件尽量在同一个单独文件，而该文件夹不允许有其他文件。例如以下代码层级：

  * lib/entity/manga  
    * manga_chapter  
      * manga_chapter.dart  
        manga_chapter.g.dart  
        manga_chapter.freezed.dart  
    * manga_cover
      * manga_cover.dart  
        manga_cover.g.dart  
        manga_cover.freezed.dart
    

2、项目使用 MVC 架构，各层说明见下。其中做出以下规定

* View 层不允许直接调用 Model 层
* Controller 层不允许直接调用 View 层（包括路由跳转），除了弹全局通知
* Model 层需要无状态

### Model

Model 层需要 **无状态** ，即通过观察者模式等方式只提供数据获取的路径或方式，最终需要由 Controller 层调用或发起）。

#### Hive

KV 数据使用 Hive 存储，需要新增的话在 lib/utils/hive/hive.dart 中新增按照格式新增一个 Box：

```dart
class HiveBox {
  static Future<LazyBox<Map<String, dynamic>>> themeConfig() async {
    await init;
    return Hive.openLazyBox<Map<String, dynamic>>("theme_config");
  }
}
```

Hive 的 box 即用即关，需要调用 close 方法关闭！

#### Drift

关系型数据使用 drift 存储，如需要新增表需要改动四个地方：

1.  在 `lib/entity` 中依照业务新增一个表实体，可参考 `lib/entity/manga/manga_info/manga_info.dart`
2.  在 `lib/database/dao` 中按照业务新增一个 Dao，格式可参考 `lib/database/dao/manga/manga_dao.dart`
3.  在 `lib/database/db` 中按照业务新增一个 Database，格式可参考 `lib/database/db/manga/manga_db.dart`
4.  在 `lib/database/database.dart` 中 DatabaseStateReady 实体新增一个变量持有新增的 DB，并在 DatabaseController#_innerInit 中进行初始化

其中 dao 允许返回 Stream 对象，可以使用以下两种方式转成 Provider：
```dart
static final _watchAllProvider = StreamProvider.autoDispose<List<MangaInfo>>((ref){
    ref.onDispose(() {});
    return DB.current.mangaDao.watchAll();
});
```


```dart
@Riverpod
Future<List<MangaInfo>> watchAll(WatchAllRef ref) async* {
  yiled* DB.current.mangaDao.watchAll();
}
```
### Controller

Controller 层使用 Riverpod_generator 生成的 NotifierProvider 实现，将 Notifier 直接作为 Controller。具体可参考 `lib/theme/theme.dart`，其中做出以下约束：

* 如果 Controller 需要异步初始化：  

a、_innerInit 中不能使用 ref 读取其他 Provider，如果需要依赖则直接在 build 中 watch   
b、只有 keepAlive 为 true 的 Controller 才能使用异步初始化  
c、异步初始化需要给加载态，然后再异步方法中更新状态  
d、异步初始化需要在 View 层添加闪屏页，可参考 下文 介绍  

```dart

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  late Future<void> _init;

  ThemeController() {
    _init = Future.microtask(() {
      _innerInit();
    });
  }
  
  @override
  ThemeConfig build() {
    // 加载态
    return ThemeConfig.none;
  }

  Future<void> _innerInit() async {
    // 初始化代码，这里不能使用 ref 读取或观察其他 Provider，因为可能目标 Controller 还未初始化成功
    // 加载后使用 state = XX 来更新状态
  }
  // 其他业务代码
}
```

* 需要新增 of 和 watch 静态方法来方便调用处调用和阅读，其中 of 返回 Notifier，watch 返回 State

```dart
@Riverpod()
class ThemeController extends _$ThemeController {

  static ThemeController of(WidgetRef ref) =>
      ref.watch(themeControllerPod.notifier);

  static ThemeConfig watch(WidgetRef ref) =>
      ref.watch(themeControllerPod);
  
  // 其他业务代码
}
```

* 对于多状态的合并可以使用方法方式的 Riverpod

```dart
@Riverpod()
Target combineAB(CombineABRef ref){
  final a = ref.watch(APod); // 另外一个方法方式的 Riverpod
  final b = BController.watch(ref); // Notifier
  // 将 a 和 b 合并为 目标类型并返回
}
```


### View

* 国际化 —— arb 文件位于 lib/l10n/arb/intl_zh_CN.arb，这在里面添加文案，使用时使用 S.current 调用

* 闪屏页 —— 所有异步初始化的 Controller 都需要在闪屏页添加相关加载态页面 ```lib/app.dart``` ：
```dart
class EasyBookApp extends HookConsumerWidget {
  const EasyBookApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {



    // =============== 初始化前监听 ======================

    final ThemeConfig themeConfig = ThemeController.watch(ref);

    final DatabaseController databaseController = DatabaseController.of(ref);
    final DatabaseState dbSta = DatabaseController.watch(ref);


    // =============== 初始化相关代码 =====================

    // 1.主题配置
    if (themeConfig == ThemeConfig.none){
      return const SplashScreen();
    }


    // 2.数据库
    if (dbSta is DatabaseStateLoading) {
      return const SplashScreen();
    }else if (dbSta is DatabaseStateError) {
      // TODO retry screen
      return const SplashScreen();
    }


    // =============== 初始化结束 =====================

    // 其他业务代码
}
```

* 路由 —— 路由声明位于 ```lib/router.dart```，参考其他路由添加即可。跳转时使用 context.go 进行跳转。这里只能 View 层才可以跳转，业务层不允许。

