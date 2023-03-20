import 'package:flutter/cupertino.dart';

enum Status { loading, completed, error }

class TransferPlaybackRenderedData {
  Status status = Status.loading;
}

class TransferPlaybackViewModel extends ChangeNotifier {
  TransferPlaybackViewModel() {
    loadDetails();
  }

  final data = TransferPlaybackRenderedData();

  void loadDetails() async {
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }
}
