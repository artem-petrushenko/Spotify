import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/configuration/constants.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:spotify_client/ui/widgets/track_modal_bottom_sheet.dart';

class ArtistTopTracksListWidget extends StatelessWidget {
  const ArtistTopTracksListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsTopTracks =
        context.select((ArtistViewModel model) => model.data.artistsTopTracks);
    return artistsTopTracks.isNotEmpty
        ? SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return _TrackWidget(
                    track: artistsTopTracks[index],
                    index: index,
                  );
                },
                childCount:
                    artistsTopTracks.length > 5 ? 5 : artistsTopTracks.length,
              ),
            ),
          )
        : const SliverToBoxAdapter();
  }
}

class _TrackWidget extends StatelessWidget {
  const _TrackWidget({
    required this.track,
    required this.index,
  });

  final int index;
  final ArtistsTopTracksData track;

  @override
  Widget build(BuildContext context) {
    final model = context.read<ArtistViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '#${(index + 1).toString()}',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
          ),
          const SizedBox(width: 8.0),
          ImageNetworkWidget(
            imageUrl: track.image ?? '',
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
                  track.name ?? '',
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  track.artists ?? '',
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return TrackModalBottomSheet(
                  track: null,
                  album: 'albumName',
                  url: 'imageUrl',
                  isFavorite: false,
                  addRemoveFavorite: () =>
                      model.addRemoveFavorite(track.id ?? '', false),
                );
              },
            ),
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
    );
  }
}
