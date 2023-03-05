import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/album/album_model.dart';
import 'package:spotify_client/ui/screens/album/screen_status/album_error_screen.dart';
import 'package:spotify_client/ui/screens/album/screen_status/album_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/album/screen_status/album_is_success_screen.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((AlbumViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const AlbumInProgressScreen();
      case Status.completed:
        return const AlbumIsSuccessScreen();
      case Status.error:
        return const AlbumErrorScreen();
    }
  }
}
