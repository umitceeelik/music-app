import 'package:client/features/home/models/song_model.dart';
import 'package:client/core/models/current_song_state.dart';
import 'package:client/features/home/repositories/home_local_repository.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'current_song_notifier.g.dart';

@riverpod
class CurrentSongNotifier extends _$CurrentSongNotifier {
  late HomeLocalRepository _homeLocalRepository;
  AudioPlayer? audioPlayer;

  @override
  CurrentSongState build() {
    _homeLocalRepository = ref.watch(homeLocalRepositoryProvider);
    return const CurrentSongState();
  }

  Future<void> updateSong(SongModel song) async {
    audioPlayer?.dispose();
    audioPlayer = AudioPlayer();

    final audioSource = AudioSource.uri(
      Uri.parse(song.song_url),
      tag: MediaItem(
        id: song.id,
        title: song.song_name,
        artist: song.artist,
        artUri: Uri.parse(song.thumbnail_url),
      ),
    );
    await audioPlayer!.setAudioSource(audioSource);

    audioPlayer!.playerStateStream.listen((playerState) {
      if (playerState.processingState == ProcessingState.completed) {
        audioPlayer!.seek(Duration.zero);
        audioPlayer!.pause();

        state = state.copyWith(isPlaying: false);
      }
    });

    _homeLocalRepository.uploadLocalSong(song);
    audioPlayer!.play();
    state = state.copyWith(currentSong: song, isPlaying: true);
  }

  void playPause() {
    if (state.isPlaying) {
      audioPlayer?.pause();
    } else {
      audioPlayer?.play();
    }

    state = state.copyWith(isPlaying: !state.isPlaying);
  }

  void seek(double val) {
    audioPlayer!.seek(
      Duration(
        milliseconds: (val * audioPlayer!.duration!.inMilliseconds).toInt(),
      ),
    );
  }
}
