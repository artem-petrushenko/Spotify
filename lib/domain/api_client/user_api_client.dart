import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/current_user_profile.dart';

class UserApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<CurrentUserProfile> getCurrentUserProfile(String accessToken) async {
    final response =
        await _apiQueryHelper.get(url: '/v1/me', accessToken: accessToken);
    return CurrentUserProfile.fromJson(response);
  }
}
