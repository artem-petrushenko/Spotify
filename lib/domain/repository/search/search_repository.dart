import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/repository/search/abstract_search_repository.dart';

import 'package:spotify_client/domain/entity/search/search_for_item.dart';

class SearchRepository implements AbstractSearchRepository {
  @override
  Future<SearchForItemModel> searchForItem({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/search',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return SearchForItemModel.fromJson(response);
  }
}
