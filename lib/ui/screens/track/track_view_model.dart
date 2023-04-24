import 'package:flutter/material.dart';

class TrackViewModel extends ChangeNotifier {
  final String trackID;
  final String image;

  TrackViewModel({required this.trackID, required this.image});
}
