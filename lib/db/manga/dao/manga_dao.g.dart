// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_dao.dart';

// ignore_for_file: type=lint
mixin _$MangaDaoMixin on DatabaseAccessor<MangaDB> {
  $MangaInfoTable get mangaInfo => attachedDatabase.mangaInfo;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mangaDaoHash() => r'2cfe4ed3c41cfc92b1a9f409d0b600c936e2c05d';

/// See also [mangaDao].
@ProviderFor(mangaDao)
final mangaDaoProvider = Provider<MangaDao>.internal(
  mangaDao,
  name: r'mangaDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mangaDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MangaDaoRef = ProviderRef<MangaDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
