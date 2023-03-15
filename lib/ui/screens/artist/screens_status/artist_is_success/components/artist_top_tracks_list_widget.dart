import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class ArtistTopTracksListWidget extends StatelessWidget {
  const ArtistTopTracksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsTopTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.horizontalPadding, vertical: 4.0),
            child: Row(
              children: [
                Text(
                  '#${(index + 1).toString()}',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                ),
                const SizedBox(width: 8.0),
                ImageNetworkWidget(
                  imageUrl: artistsTopTracks[index].image ?? '',
                  height: 48.0,
                  width: 48.0,
                  radius: 12.0,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        artistsTopTracks[index].name ?? '',
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        artistsTopTracks[index].artists ?? '',
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                )
              ],
            ),
          );
        },
        childCount: artistsTopTracks.length > 5 ? 5 : artistsTopTracks.length,
      ),
    );
  }
}
