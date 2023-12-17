import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify_client/src/common/data/client/rest_client.dart';
import 'package:spotify_client/src/common/data/client/shared_preferences_dao.dart';
import 'package:spotify_client/src/common/data/provider/session/local/session_storage_impl.dart';
import 'package:spotify_client/src/common/data/repository/auth/auth_repository_impl.dart';

import 'package:spotify_client/src/feature/initialization/model/initialization_proccess.dart';
import 'package:spotify_client/src/feature/liked_songs/data/provider/remote/liked_songs_network_data_provider_impl.dart';
import 'package:spotify_client/src/feature/liked_songs/data/repository/liked_songs_repository_impl.dart';

/// A function which represents a single initialization step.
typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// The initialization steps, which are executed in the order they are defined.
///
/// The [Dependencies] object is passed to each step, which allows the step to
/// set the dependency, and the next step to use it.
mixin InitializationSteps {
  /// The initialization steps,
  /// which are executed in the order they are defined.
  final initializationSteps = <String, StepAction>{
    'Shared Preferences': (progress) async {
      final sharedPreferences = await SharedPreferences.getInstance();
      progress.dependencies.sharedPreferences = sharedPreferences;
    },
    'Auth Repository': (progress) {
      final sharedPreferences = progress.dependencies.sharedPreferences;
      final sharedPreferencesDao =
          SharedPreferencesDao(sharedPreferences: sharedPreferences);
      final sessionStorage =
          SessionStorageImpl(preferences: sharedPreferencesDao);
      progress.dependencies.authRepository = AuthRepositoryImpl(
        sessionStorage: sessionStorage,
      );
    },
    'Liked Songs Repository': (progress) {
      const restClient = RestClient();
      const likedSongsNetworkDataProvider = LikedSongsNetworkDataProviderImpl(
        client: restClient,
      );
      progress.dependencies.likedSongsRepository =
          const LikedSongsRepositoryImpl(
        likedSongsNetworkDataProvider: likedSongsNetworkDataProvider,
      );
    },
  };
}
