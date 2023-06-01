part of 'artist_bloc.dart';

@immutable
sealed class ArtistEvent extends Equatable {
  const ArtistEvent();
}

class LoadingArtistEvent extends ArtistEvent {
  final String artistID;

  @override
  List<Object?> get props => [artistID];

  const LoadingArtistEvent({
    required this.artistID,
  });
}
