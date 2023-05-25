part of 'mini_player_bloc.dart';

@immutable
sealed class MiniPlayerState extends Equatable {
  const MiniPlayerState();
}

class MiniPlayerLoadingState extends MiniPlayerState {
  @override
  List<Object?> get props => [];
}

class MiniPlayerActiveState extends MiniPlayerState {
  final PlaybackStateModel? playback;

  const MiniPlayerActiveState({
    required this.playback,
  });

  @override
  List<Object?> get props => [playback];

  MiniPlayerActiveState copyWith({
    PlaybackStateModel? playback,
  }) {
    return MiniPlayerActiveState(
      playback: playback ?? this.playback,
    );
  }
}

class MiniPlayerInactiveState extends MiniPlayerState {
  @override
  List<Object?> get props => [];
}

class MiniPlayerFailureState extends MiniPlayerState {
  final Object? error;

  const MiniPlayerFailureState({this.error});

  MiniPlayerFailureState copyWith({
    Object? error,
  }) {
    return MiniPlayerFailureState(
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [error];
}
