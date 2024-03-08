// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel_dao.dart';

// ignore_for_file: type=lint
mixin _$NovelDaoMixin on DatabaseAccessor<NovelDB> {
  $NovelInfoTable get novelInfo => attachedDatabase.novelInfo;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$novelDaoHash() => r'1dcd2113327c6310fd599160227d44a24dd61569';

/// See also [novelDao].
@ProviderFor(novelDao)
final novelDaoProvider = Provider<NovelDao>.internal(
  novelDao,
  name: r'novelDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$novelDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NovelDaoRef = ProviderRef<NovelDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
