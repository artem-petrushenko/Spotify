import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/search/search_for_item.dart';

class SearchApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<SearchForItemModel> searchForItem({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/search',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return SearchForItemModel.fromJson(response);
  }
}
