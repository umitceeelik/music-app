import 'package:client/features/home/models/song_model.dart';

class CurrentSongState {
  final SongModel? currentSong;
  final bool isPlaying;

  const CurrentSongState({this.currentSong, this.isPlaying = false});

  CurrentSongState copyWith({SongModel? currentSong, bool? isPlaying}) {
    return CurrentSongState(
      currentSong: currentSong ?? this.currentSong,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
