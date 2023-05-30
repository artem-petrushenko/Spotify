part of 'liked_songs_bloc.dart';

@immutable
sealed class LikedSongsEvent extends Equatable {
  const LikedSongsEvent();
}

class LoadLikedSongsEvent extends LikedSongsEvent {
  @override
  List<Object?> get props => [];
}
