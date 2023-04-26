import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

abstract class AbstractUsersRepository {
  Future<CurrentUserProfileModel> getCurrentUserProfile({
    required String accessToken,
  });
}
