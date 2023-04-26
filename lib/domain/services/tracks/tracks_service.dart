import 'package:get_it/get_it.dart';
import 'package:spotify_client/domain/services/tracks/abstract_tracks_service.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

import 'package:spotify_client/domain/repository/tracks/abstract_tracks_repository.dart';

class TracksService implements AbstractTracksService {
  @override
  Future<UsersSavedTracksModel> getUsersSavedTracks({
    String? market,
    int? offset,
    int? limit,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final usersSavedTracks =
        await GetIt.instance<AbstractTracksRepository>().getUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return usersSavedTracks;
  }

  @override
  Future<List<dynamic>> checkUsersSavedTracks({
    required List<String> ids,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final usersSavedTracks =
        await GetIt.instance<AbstractTracksRepository>().checkUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
    );
    return usersSavedTracks;
  }

  @override
  Future<void> saveTracksForCurrentUser({
    required List<String> ids,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    await GetIt.instance<AbstractTracksRepository>().saveTracksForCurrentUser(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
      body: <String, dynamic>{
        'ids': ids,
      },
    );
  }

  @override
  Future<void> removeUsersSavedTracks({
    required List<String> ids,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    await GetIt.instance<AbstractTracksRepository>().removeUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
      body: <String, dynamic>{
        'ids': ids,
      },
    );
  }

  @override
  Future<RecommendationsModel> getRecommendations({
    int? limit,
    String? market,
    required String seedArtists,
    required String seedGenres,
    required String seedTracks,
    double? minAcousticness,
    double? maxAcousticness,
    double? targetAcousticness,
    double? minDanceability,
    double? maxDanceability,
    double? targetDanceability,
    int? minDurationMs,
    int? maxDurationMs,
    int? targetDurationMs,
    double? minEnergy,
    double? maxEnergy,
    double? targetEnergy,
    double? minInstrumentalness,
    double? maxInstrumentalness,
    double? targetInstrumentalness,
    int? minKey,
    int? maxKey,
    int? targetKey,
    double? minLiveness,
    double? maxLiveness,
    double? targetLiveness,
    double? minLoudness,
    double? maxLoudness,
    double? targetLoudness,
    int? minMode,
    int? maxMode,
    int? targetMode,
    int? minPopularity,
    int? maxPopularity,
    int? targetPopularity,
    double? minSpeechiness,
    double? maxSpeechiness,
    double? targetSpeechiness,
    double? minTempo,
    double? maxTempo,
    double? targetTempo,
    int? minTimeSignature,
    int? maxTimeSignature,
    int? targetTimeSignature,
    double? minValence,
    double? maxValence,
    double? targetValence,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final recommendations =
        await GetIt.instance<AbstractTracksRepository>().getRecommendations(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'seed_artists': seedArtists,
        'seed_genres': seedGenres,
        'seed_tracks': seedTracks,
        'min_acousticness': minAcousticness,
        'max_acousticness': maxAcousticness,
        'target_acousticness': targetAcousticness,
        'min_danceability': minDanceability,
        'max_danceability': maxDanceability,
        'target_danceability': targetDanceability,
        'min_duration_ms': minDurationMs,
        'max_duration_ms': maxDurationMs,
        'target_duration_ms': targetDurationMs,
        'min_energy': minEnergy,
        'max_energy': maxEnergy,
        'target_energy': targetEnergy,
        'min_instrumentalness': minInstrumentalness,
        'max_instrumentalness': maxInstrumentalness,
        'target_instrumentalness': targetInstrumentalness,
        'min_key': minKey,
        'max_key': maxKey,
        'target_key': targetInstrumentalness,
        'min_liveness': minLiveness,
        'max_liveness': maxLiveness,
        'target_liveness': targetLiveness,
        'min_loudness': minLoudness,
        'max_loudness': maxLoudness,
        'target_loudness': targetLoudness,
        'min_mode': minMode,
        'max_mode': maxMode,
        'target_mode': targetMode,
        'min_popularity': minPopularity,
        'max_popularity': maxPopularity,
        'target_popularity': targetPopularity,
        'min_speechiness': minSpeechiness,
        'max_speechiness': maxSpeechiness,
        'target_speechiness': targetSpeechiness,
        'min_tempo': minTempo,
        'max_tempo': maxTempo,
        'target_tempo': targetTempo,
        'min_time_signature': minTimeSignature,
        'max_time_signature': maxValence,
        'target_time_signature': targetTimeSignature,
        'min_valence': minValence,
        'max_valence': maxValence,
        'target_valence': targetValence,
      },
    );
    return recommendations;
  }
}
