import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

import 'package:spotify_client/domain/services/users/abstract_users_service.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/repository/users/abstract_users_repository.dart';

class UsersService implements AbstractUsersService {
  @override
  Future<CurrentUserProfileModel> getCurrentUserProfile() async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final currentUserProfile =
        await GetIt.instance<AbstractUsersRepository>().getCurrentUserProfile(
      accessToken: accessToken ?? '',
    );
    return currentUserProfile;
  }
}
