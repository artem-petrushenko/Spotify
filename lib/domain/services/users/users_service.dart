import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

import 'package:spotify_client/domain/services/users/abstract_users_service.dart';

import 'package:spotify_client/domain/repository/users/abstract_users_repository.dart';

import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';

class UsersService implements AbstractUsersService {
  @override
  Future<CurrentUserProfileModel> getCurrentUserProfile() async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final currentUserProfile =
        await GetIt.instance<AbstractUsersRepository>().getCurrentUserProfile(
      accessToken: accessToken ?? '',
    );
    return currentUserProfile;
  }
}
