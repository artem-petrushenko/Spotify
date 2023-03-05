import 'package:flutter/cupertino.dart';

class ArtistViewModel extends ChangeNotifier {
  final String artistId;

  ArtistViewModel({required this.artistId}) {
    loadDetails();
  }

  Future<void> loadDetails() async {
  }
}
