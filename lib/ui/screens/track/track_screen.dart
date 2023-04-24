import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/track/track_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<TrackViewModel>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: model.trackID,
              child: ImageNetworkWidget(
                imageUrl: model.image,
                height: 128.0,
                width: 128.0,
              ),
            ),
            Text(model.trackID),
          ],
        ),
      ),
    );
  }
}
