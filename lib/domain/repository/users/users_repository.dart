import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

import 'package:spotify_client/domain/repository/users/abstract_users_repository.dart';

class UsersRepository implements AbstractUsersRepository {
  @override
  Future<CurrentUserProfileModel> getCurrentUserProfile({
    required String accessToken,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CurrentUserProfileModel.fromJson(response);
  }
}
