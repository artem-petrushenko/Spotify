import 'package:spotify_client/domain/api_client/user_api_client.dart';
import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/current_user_profile.dart';

class UserService {
  final _sessionDataProvider = SessionDataProvider();
  final _userApiClient = UserApiClient();

  Future<CurrentUserProfile> getCurrentUserProfileData() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final currentUserProfile =
        await _userApiClient.getCurrentUserProfile(accessToken ?? '');
    return currentUserProfile;
  }
}
