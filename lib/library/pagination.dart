import 'package:spotify_client/domain/services/tracks_service.dart';

import 'package:spotify_client/domain/entity/albums/album_model.dart';

class Pagination {
  final _trackService = TracksService();

  int _currentPage = 0;
  final List<Items> _data = [];

  List<Items> get data => _data;

  Future<void> fetchData() async {
    final newData = await _trackService.getUsersSavedTracks(
      market: 'ES',
      offset: _currentPage * _pageSize,
      limit: _pageSize,
    );
    _data.addAll(newData.items.iterator as Iterable<Items>);
    _currentPage++;
  }

  Future<void> reset() async {
    _currentPage = 0;
    _data.clear();
    await fetchData();
  }

  bool get hasMoreData => _data.isNotEmpty;

  bool get isLoading =>
      false; // You can replace this with actual loading state management.

  bool get hasError =>
      false; // You can replace this with actual error state management.

  void retry() {} // You can replace this with actual retry logic.

  static const int _pageSize = 20;
}
