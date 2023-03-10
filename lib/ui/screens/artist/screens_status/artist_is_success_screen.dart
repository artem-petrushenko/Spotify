import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArtistIsSuccessScreen extends StatelessWidget {
  const ArtistIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image =
        context.select((ArtistViewModel model) => model.data.artist.image);
    final artistsTopTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            elevation: 0,
            pinned: true,
            centerTitle: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: ImageNetworkWidget(
                imageUrl: image ?? '',
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.popularTracks,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  elevation: 0,
                  child: Row(
                    children: [
                      Text(
                        (index + 1).toString(),
                        style: Theme.of(context).textTheme.labelLarge,
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
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              artistsTopTracks[index].number.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
              childCount:
                  artistsTopTracks.length
                      > 5 ? 5 : artistsTopTracks.length,
            ),
          ),
        ],
      ),
    );
  }
}
