import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class PlaylistErrorScreen extends StatelessWidget {
  const PlaylistErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = context.select((PlaylistViewModel model) => model.image);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: ImageNetworkWidget(
                imageUrl: image,
                radius: 16.0,
              ),
            ),
            const SizedBox(height: 32.0),
            const Text(
                'Sorry, an error occurred while uploading the album "Fisting"'),
          ],
        ),
      ),
    );
  }
}
