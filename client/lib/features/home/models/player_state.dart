import 'package:client/features/home/models/song_model.dart';

class PlayerState {
  final SongModel? currentSong;
  final bool isPlaying;

  const PlayerState({this.currentSong, this.isPlaying = false});

  PlayerState copyWith({SongModel? currentSong, bool? isPlaying}) {
    return PlayerState(
      currentSong: currentSong ?? this.currentSong,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}
