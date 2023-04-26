import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

abstract class AbstractTracksService {
  Future<UsersSavedTracksModel> getUsersSavedTracks({
    String? market,
    int? offset,
    int? limit,
  });

  Future<List<dynamic>> checkUsersSavedTracks({
    required List<String> ids,
  });

  Future<void> saveTracksForCurrentUser({
    required List<String> ids,
  });

  Future<void> removeUsersSavedTracks({
    required List<String> ids,
  });

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
  });
}
