// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_local_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authLocalRepository)
const authLocalRepositoryProvider = AuthLocalRepositoryProvider._();

final class AuthLocalRepositoryProvider
    extends
        $FunctionalProvider<
          AuthLocalRepository,
          AuthLocalRepository,
          AuthLocalRepository
        >
    with $Provider<AuthLocalRepository> {
  const AuthLocalRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authLocalRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authLocalRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthLocalRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthLocalRepository create(Ref ref) {
    return authLocalRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthLocalRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthLocalRepository>(value),
    );
  }
}

String _$authLocalRepositoryHash() =>
    r'4997658913f9b8ca4ef9f6396b78c449ec13991b';
