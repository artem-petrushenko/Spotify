import 'package:spotify_client/domain/entity/users/current_user_profile.dart';

abstract class AbstractUsersService {
  Future<CurrentUserProfileModel> getCurrentUserProfile();
}
