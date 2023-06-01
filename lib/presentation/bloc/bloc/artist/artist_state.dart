part of 'artist_bloc.dart';

@immutable
sealed class ArtistState extends Equatable {
  const ArtistState();
}

class ArtistLoading extends ArtistState {
  @override
  List<Object> get props => [];
}

class ArtistSuccess extends ArtistState {
  final ArtistModel artist;
  final ArtistsTopTracksModel topTracks;
  final ArtistsRelatedArtistsModel relatedArtists;
  final ArtistsAlbumsModel albums;

  @override
  List<Object> get props => [artist, topTracks, relatedArtists, albums];

  const ArtistSuccess({
    required this.artist,
    required this.topTracks,
    required this.relatedArtists,
    required this.albums,
  });

  ArtistSuccess copyWith({
    ArtistModel? artist,
    ArtistsTopTracksModel? topTracks,
    ArtistsRelatedArtistsModel? relatedArtists,
    ArtistsAlbumsModel? albums,
  }) {
    return ArtistSuccess(
      artist: artist ?? this.artist,
      topTracks: topTracks ?? this.topTracks,
      relatedArtists: relatedArtists ?? this.relatedArtists,
      albums: albums ?? this.albums,
    );
  }
}

class ArtistFailure extends ArtistState {
  final Object? error;

  @override
  List<Object?> get props => [error];

  const ArtistFailure({
    this.error,
  });
}
