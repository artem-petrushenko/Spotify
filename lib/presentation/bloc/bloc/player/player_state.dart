part of 'player_bloc.dart';

@immutable
sealed class PlayerState {
  const PlayerState();
}

class PlayerLoadingState extends PlayerState {}

class PlayerSuccessState extends PlayerState {
  final CurrentlyPlayingTrackModel track;

  const PlayerSuccessState({
    required this.track,
  });
}

class PlayerFailureState extends PlayerState {
  final Object? error;

  const PlayerFailureState({
    this.error,
  });
}
