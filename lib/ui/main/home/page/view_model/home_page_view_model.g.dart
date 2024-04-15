// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomePageStateImpl _$$HomePageStateImplFromJson(Map<String, dynamic> json) =>
    _$HomePageStateImpl(
      coverList: (json['cover_list'] as List<dynamic>?)
              ?.map((e) => BookCover.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextKey: json['next_key'] as String? ?? null,
      isError: json['is_error'] as bool? ?? false,
      errorMsg: json['error_msg'] as String? ?? "",
    );

Map<String, dynamic> _$$HomePageStateImplToJson(_$HomePageStateImpl instance) =>
    <String, dynamic>{
      'cover_list': instance.coverList,
      'next_key': instance.nextKey,
      'is_error': instance.isError,
      'error_msg': instance.errorMsg,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homePageViewModelHash() => r'f6fcacbe94222f51f5ca7c5cea4b33a4caec4cde';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomePageViewModel
    extends BuildlessAutoDisposeNotifier<HomePageState> {
  late final BookCoverPage page;

  HomePageState build(
    BookCoverPage page,
  );
}

/// See also [HomePageViewModel].
@ProviderFor(HomePageViewModel)
const homePageViewModelProvider = HomePageViewModelFamily();

/// See also [HomePageViewModel].
class HomePageViewModelFamily extends Family<HomePageState> {
  /// See also [HomePageViewModel].
  const HomePageViewModelFamily();

  /// See also [HomePageViewModel].
  HomePageViewModelProvider call(
    BookCoverPage page,
  ) {
    return HomePageViewModelProvider(
      page,
    );
  }

  @override
  HomePageViewModelProvider getProviderOverride(
    covariant HomePageViewModelProvider provider,
  ) {
    return call(
      provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homePageViewModelProvider';
}

/// See also [HomePageViewModel].
class HomePageViewModelProvider
    extends AutoDisposeNotifierProviderImpl<HomePageViewModel, HomePageState> {
  /// See also [HomePageViewModel].
  HomePageViewModelProvider(
    BookCoverPage page,
  ) : this._internal(
          () => HomePageViewModel()..page = page,
          from: homePageViewModelProvider,
          name: r'homePageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homePageViewModelHash,
          dependencies: HomePageViewModelFamily._dependencies,
          allTransitiveDependencies:
              HomePageViewModelFamily._allTransitiveDependencies,
          page: page,
        );

  HomePageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final BookCoverPage page;

  @override
  HomePageState runNotifierBuild(
    covariant HomePageViewModel notifier,
  ) {
    return notifier.build(
      page,
    );
  }

  @override
  Override overrideWith(HomePageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomePageViewModelProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<HomePageViewModel, HomePageState>
      createElement() {
    return _HomePageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomePageViewModelProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HomePageViewModelRef on AutoDisposeNotifierProviderRef<HomePageState> {
  /// The parameter `page` of this provider.
  BookCoverPage get page;
}

class _HomePageViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<HomePageViewModel, HomePageState>
    with HomePageViewModelRef {
  _HomePageViewModelProviderElement(super.provider);

  @override
  BookCoverPage get page => (origin as HomePageViewModelProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
