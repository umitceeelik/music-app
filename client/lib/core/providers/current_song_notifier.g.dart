// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_song_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentSongNotifier)
const currentSongProvider = CurrentSongNotifierProvider._();

final class CurrentSongNotifierProvider
    extends $NotifierProvider<CurrentSongNotifier, CurrentSongState> {
  const CurrentSongNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentSongProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentSongNotifierHash();

  @$internal
  @override
  CurrentSongNotifier create() => CurrentSongNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CurrentSongState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CurrentSongState>(value),
    );
  }
}

String _$currentSongNotifierHash() =>
    r'e693c12fc47bb1f1b377b040109cb5c409278c94';

abstract class _$CurrentSongNotifier extends $Notifier<CurrentSongState> {
  CurrentSongState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CurrentSongState, CurrentSongState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CurrentSongState, CurrentSongState>,
              CurrentSongState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
