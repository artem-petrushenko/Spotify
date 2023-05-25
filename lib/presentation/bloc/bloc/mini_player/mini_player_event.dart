part of 'mini_player_bloc.dart';

@immutable
sealed class MiniPlayerEvent {
  const MiniPlayerEvent();
}

class GetPlaybackStateEvent extends MiniPlayerEvent {}

class PauseStartPlaybackEvent extends MiniPlayerEvent {
  final bool isPlaying;

  const PauseStartPlaybackEvent({
    required this.isPlaying,
  });
}
