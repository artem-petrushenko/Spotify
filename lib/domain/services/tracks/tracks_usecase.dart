import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';
import 'package:spotify_client/domain/repository/tracks/abstract_tracks_repository.dart';
import 'package:spotify_client/domain/entities/tracks/users_saved_tracks_item_entity.dart';

class TrackUseCase {
  Future<List<UsersSavedTracksItemEntity>> getLikedTracks({
    String? market,
    int? offset,
    int? limit,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final usersSavedTracks =
        await GetIt.instance<AbstractTracksRepository>().getUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return usersSavedTracks.items
        .map(
          (e) => UsersSavedTracksItemEntity(
            addedAt: e.addedAt,
            track: Track(
              name: e.track?.name,
              artists: e.track?.artists
                  ?.map(
                    (e) => TrackArtist(
                      externalUrls: ExternalUrls(
                        spotify: e.externalUrls?.spotify,
                      ),
                      name: e.name,
                    ),
                  )
                  .toList(),
              album: Album(
                images: e.track?.album?.images
                    ?.map(
                      (e) =>
                          Image(url: e.url, height: e.height, width: e.width),
                    )
                    .toList(),
              ),
              explicit: e.track?.explicit,
            ),
          ),
        )
        .toList();
  }
}
