import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

import 'package:spotify_client/ui/screens/playlist/status/playlist_error_screen.dart';
import 'package:spotify_client/ui/screens/playlist/status/playlist_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/playlist/status/playlist_is_success_screen.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status =
        context.select((PlaylistViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const PlaylistInProgressScreen();
      case Status.completed:
        return const PlaylistIsSuccessScreen();
      case Status.error:
        return const PlaylistErrorScreen();
    }
  }
}
