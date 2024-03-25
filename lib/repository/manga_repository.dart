
import 'package:easy_mygo/database/database.dart';
import 'package:easy_mygo/database/db/manga/manga_db.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


// 对 drift 的封装，这里必须在闪屏页之后调用，否则会报错
class MangaRepository {

  static final _watchAllProvider = StreamProvider.autoDispose<List<MangaInfo>>((ref){
    ref.onDispose(() {});
    return DB.current.mangaDao.watchAll();
  });

  static final _watchStarProvider = StreamProvider.autoDispose<List<MangaInfo>>((ref){
    ref.onDispose(() {});
    return DB.current.mangaDao.watchStar();
  });

  static final _watchHistoryProvider = StreamProvider.autoDispose<List<MangaInfo>>((ref){
    ref.onDispose(() {});
    return DB.current.mangaDao.watchHistory();
  });

  static List<MangaInfo> watchAll(WidgetRef ref){
    final resState = ref.watch(_watchAllProvider);
    return resState.valueOrNull ?? [];
  }

  static List<MangaInfo> watchStar(WidgetRef ref){
    final resState = ref.watch(_watchStarProvider);
    return resState.valueOrNull ?? [];
  }

  static List<MangaInfo> watchHistory(WidgetRef ref){
    final resState = ref.watch(_watchHistoryProvider);
    return resState.valueOrNull ?? [];
  }


}