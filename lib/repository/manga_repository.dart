import 'dart:collection';

import 'package:easy_mygo/repository/entity/manga_info/manga_info.dart';
import 'package:easy_mygo/utils/hive/hive.dart';
import 'package:easy_mygo/utils/riverpod/mutable_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final mangaRepositoryPod = Provider((ref) => MangaRepository._(ref));

class MangaRepository {
  final ProviderRef _ref;

  late Future<void> _init;

  final data = mutableNotifier<Map<String, MangaInfo>>({});

  MangaRepository._(this._ref) {
    _init = Future(() async {
      final box = await HiveBox.mangaInfo();
      final HashMap<String, MangaInfo> res = HashMap();
      final futures = box.keys.map((e) => box.get(e));
      for (var value in futures) {
        final manga = await value;
        if(manga != null){
          final info = MangaInfo.fromJson(manga);
          res[info.identify] = info;
        }
      }
      box.close();
      data.update(_ref, (p0) => res);
    });
  }

  List<MangaInfo> watchHistory(Ref ref){
    return ref.watch(data.select((value) => value.values.where((element) => element.lastHistoryTime > 0).toList(growable: false)));
  }

  List<MangaInfo> watchStar(Ref ref){
    return ref.watch(data.select((value) => value.values.where((element) => element.starTime > 0).toList(growable: false)));
  }

  Future<MangaInfo> setStar(MangaInfo info, bool star) async {
    await _init;
    final i = info.copyWith(
        starTime: star ? DateTime.now().millisecondsSinceEpoch : 0,
        pinTime: 0,
    );
    data.update(_ref, (cur){
      return cur..[info.identify] = i;
    });
    final box = await HiveBox.mangaInfo();
    await box.put(i.identify, i.toJson());
    await box.flush();
    await box.close();
    return i;
  }

}
