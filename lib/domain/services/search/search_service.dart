import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/search/abstract_search_repository.dart';

import 'package:spotify_client/domain/services/search/abstract_search_service.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/search/search_for_item.dart';

class SearchService implements AbstractSearchService {
  @override
  Future<SearchForItemModel> searchForItem({
    required String searchQuery,
    required List<String> type,
    String? market,
    int? limit,
    int? offset,
    String? includeExternal,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final searchForItem =
        await GetIt.instance<AbstractSearchRepository>().searchForItem(
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
