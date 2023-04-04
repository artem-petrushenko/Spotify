import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/api_client/search_api_client.dart';

import 'package:spotify_client/domain/entity/search/search_for_item.dart';

class SearchService {
  final _sessionDataProvider = SessionDataProvider();
  final _searchApiClient = SearchApiClient();

  Future<SearchForItemModel> searchForItem({
    required String searchQuery,
    required List<String> type,
    String? market,
    int? limit,
    int? offset,
    String? includeExternal,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final searchForItem = await _searchApiClient.searchForItem(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'q': searchQuery,
        'type': type.join(','),
        'market': market,
        'limit': limit,
        'offset': offset,
        'include_external': includeExternal,
      },
    );
    return searchForItem;
  }
}
