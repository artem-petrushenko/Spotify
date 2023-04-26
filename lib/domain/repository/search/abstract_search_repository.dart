import 'package:spotify_client/domain/entity/search/search_for_item.dart';

abstract class AbstractSearchRepository {
  Future<SearchForItemModel> searchForItem({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });
}
