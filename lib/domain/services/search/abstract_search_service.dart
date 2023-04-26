import 'package:spotify_client/domain/entity/search/search_for_item.dart';

abstract class AbstractSearchService {
  Future<SearchForItemModel> searchForItem({
    required String searchQuery,
    required List<String> type,
    String? market,
    int? limit,
    int? offset,
    String? includeExternal,
  });
}
