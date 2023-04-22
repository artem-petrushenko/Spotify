import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<PlaylistViewModel>();
    return Scaffold(body: Center(child: Text(model.playlistID)));
  }
}
