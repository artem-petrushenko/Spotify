import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_model.dart';

import 'package:spotify_client/ui/screens/liked_music_playlist/screen_status/liked_music_playlists_error_screen.dart';
import 'package:spotify_client/ui/screens/liked_music_playlist/screen_status/liked_music_playlists_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/liked_music_playlist/screen_status/liked_music_playlists_is_success_screen.dart';

class LikedMusicPlaylistScreen extends StatelessWidget {
  const LikedMusicPlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context
        .select((LikedMusicPlaylistViewModel model) => model.data.status);
    if (status == Status.loading) {
      return const LikedMusicPlaylistsInProgressScreen();
    } else if (status == Status.completed) {
      return const LikedMusicPlaylistIsSuccessScreen();
    } else {
      return const LikedMusicPlaylistsErrorScreen();
    }
  }
}
