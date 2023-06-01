import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

import 'package:spotify_client/domain/services/artists/abstract_artists_service.dart';

part 'artist_event.dart';

part 'artist_state.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  ArtistBloc() : super(ArtistLoading()) {
    on<ArtistEvent>((event, emit) async {
      if (event is LoadingArtistEvent) {
        try {
          final ArtistModel artistModel =
              await GetIt.instance<AbstractArtistsService>()
                  .getArtist(id: event.artistID);
          final ArtistsTopTracksModel artistsTopTracksModel =
                await GetIt.instance<AbstractArtistsService>()
                  .getArtistsTopTracks(id: event.artistID, market: 'ES');
          final ArtistsRelatedArtistsModel artistsRelatedArtistsModel =
              await GetIt.instance<AbstractArtistsService>()
                  .getArtistsRelatedArtists(id: event.artistID);
          final ArtistsAlbumsModel artistsAlbumsModel =
              await GetIt.instance<AbstractArtistsService>().getArtistsAlbums(
                  id: event.artistID,
                  market: 'ES',
                  limit: 10,
                  offset: 0,
                  includeGroups: [
                'album',
                'single',
                'appears_on',
                'compilation'
              ]);
          emit(ArtistSuccess(
            artist: artistModel,
            topTracks: artistsTopTracksModel,
            relatedArtists: artistsRelatedArtistsModel,
            albums: artistsAlbumsModel,
          ));
        } catch (error) {
          emit(ArtistFailure(error: error));
        }
      }
    });
  }
}
