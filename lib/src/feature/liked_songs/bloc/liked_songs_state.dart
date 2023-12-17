part of 'liked_songs_bloc.dart';

@freezed
class LikedSongsState with _$LikedSongsState {
  const factory LikedSongsState.loading() = _Loading;

  const factory LikedSongsState.empty() = _Empty;

  const factory LikedSongsState.success({
    required final bool hasReachedMax,
    required final List<UsersSavedTracksModel> tracks,
  }) = _Success;

  const factory LikedSongsState.failure({
    required final Object error,
  }) = _Failure;
}
