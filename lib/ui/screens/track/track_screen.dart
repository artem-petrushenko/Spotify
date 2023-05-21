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
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    '',
                    height: 96.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.6),
                    colorBlendMode: BlendMode.hardLight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'name',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'artists ?? ' '',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '03:34',
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  ),
                ),
              ],
            ),
            Text(model.trackID),
          ],
        ),
      ),
    );
  }
}
