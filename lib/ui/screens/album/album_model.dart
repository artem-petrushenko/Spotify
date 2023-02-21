import 'package:flutter/material.dart';

class AlbumViewModel extends ChangeNotifier {
  late final scrollController = ScrollController();

  static const kExpandedHeight = 360.0;
  static const kToolbarHeight = 60.0;

  bool get isSliverAppBarExpanded{
    return scrollController.hasClients &&
        scrollController.offset > kExpandedHeight - kToolbarHeight;
  }
}
