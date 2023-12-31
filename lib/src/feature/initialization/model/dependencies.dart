import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_client/src/common/data/client/rest_client.dart';

import 'package:spotify_client/src/feature/authentication/data/repository/authentication_repository.dart';
import 'package:spotify_client/src/feature/liked_songs/data/repository/liked_songs_repository.dart';

/// {@template dependencies}
/// Dependencies container
/// {@endtemplate}
base class Dependencies {
  /// {@macro dependencies}
  Dependencies();

  /// Rest Client
  late final RestClient restClient;

  /// Shared preferences
  late final SharedPreferences sharedPreferences;

  /// Theme repository
  late final LikedSongsRepository likedSongsRepository;
  late final AuthenticationRepository authenticationRepository;
}

/// {@template initialization_result}
/// Result of initialization
/// {@endtemplate}
final class InitializationResult {
  /// {@macro initialization_result}
  const InitializationResult({
    required this.dependencies,
    required this.stepCount,
    required this.msSpent,
  });

  /// The dependencies
  final Dependencies dependencies;

  /// The number of steps
  final int stepCount;

  /// The number of milliseconds spent
  final int msSpent;

  @override
  String toString() => '$InitializationResult('
      'dependencies: $dependencies, '
      'stepCount: $stepCount, '
      'msSpent: $msSpent'
      ')';
}
