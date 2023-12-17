part of 'liked_songs_bloc.dart';

@freezed
class LikedSongsEvent with _$LikedSongsEvent {
  const factory LikedSongsEvent.fetchLikedSongs() = _FetchLikedSogns;
}
