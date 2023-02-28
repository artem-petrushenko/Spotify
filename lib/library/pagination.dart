class PaginationLoadResult<T> {
  final List<T> data;
  final int currentPage;
  final int totalPage;

  PaginationLoadResult({
    required this.data,
    required this.currentPage,
    required this.totalPage,
  });
}

typedef PaginationLoad<T> = Future<PaginationLoadResult<T>> Function(int);

class Pagination<T> {
  final _data = <T>[];
  late int _currentPage;
  late int _totalPage;
  bool _isLoadingInProgress = false;
  final PaginationLoad<T> load;

  List<T> get data => _data;

  Pagination(this.load);

  Future<void> loadNextPage() async {
    if (_isLoadingInProgress || _currentPage >= _totalPage) return;
    _isLoadingInProgress = true;
    final nextPage = _currentPage + 1;
    try {
      final result = await load(nextPage);
      _data.addAll(result.data);
      _currentPage = result.currentPage;
      _totalPage = result.totalPage;
      _isLoadingInProgress = false;
    } catch (e) {
      _isLoadingInProgress = false;
    }
  }

  Future<void> reset() async {
    _currentPage = 0;
    _totalPage = 1;
    _data.clear();
    await loadNextPage();
  }
}
