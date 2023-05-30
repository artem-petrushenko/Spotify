part of 'liked_songs_bloc.dart';

@immutable
sealed class LikedSongsState extends Equatable {
  const LikedSongsState();
}

class LikedSongsLoading extends LikedSongsState {
  @override
  List<Object> get props => [];
}

class LikedSongsEmpty extends LikedSongsState {
  @override
  List<Object?> get props => [];
}

class LikedSongsSuccess extends LikedSongsState {
  final bool hasReachedMax;
  final List<UsersSavedTracksItemEntity> tracks;

  @override
  List<Object> get props => [hasReachedMax, tracks];

  const LikedSongsSuccess({
    required this.hasReachedMax,
    required this.tracks,
  });

  LikedSongsSuccess copyWith({
    int? offset,
    bool? hasReachedMax,
    List<UsersSavedTracksItemEntity>? tracks,
  }) {
    return LikedSongsSuccess(
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      tracks: tracks ?? this.tracks,
    );
  }
}

class LikedSongsFailure extends LikedSongsState {
  final Object? error;

  @override
  List<Object?> get props => [error];

  const LikedSongsFailure({
    this.error,
  });
}
