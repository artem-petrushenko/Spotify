part of 'player_bloc.dart';

@immutable
sealed class PlayerEvent {
  const PlayerEvent();
}

class GetCurrentPlayTrackEvent extends PlayerEvent {}

class SkipToNextEvent extends PlayerEvent {}

class SkipToPreviousEvent extends PlayerEvent {}

class TogglePlaybackShuffleEvent extends PlayerEvent {
  final bool shuffleState;

  const TogglePlaybackShuffleEvent({
    required this.shuffleState,
  });
}

class ChangePositionEvent extends PlayerEvent {
  final double position;

  const ChangePositionEvent({
    required this.position,
  });
}

class StartResumePlaybackEvent extends PlayerEvent {
  final bool isPlaying;

  const StartResumePlaybackEvent({
    required this.isPlaying,
  });
}

class SetRepeatModeEvent extends PlayerEvent {
  final String repeatState;

  const SetRepeatModeEvent({
    required this.repeatState,
  });
}
