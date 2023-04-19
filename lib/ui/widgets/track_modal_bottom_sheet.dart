import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class TrackModalBottomSheet extends StatelessWidget {
  final bool? isFavorite;
  final String? album;
  final String? url;
  final Track? track;
  final VoidCallback? addRemoveFavorite;
  final VoidCallback? addItemToPlaybackQueue;

  const TrackModalBottomSheet({
    Key? key,
    required this.isFavorite,
    required this.album,
    required this.url,
    required this.track,
    required this.addRemoveFavorite,
    required this.addItemToPlaybackQueue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 24.0, right: 24.0, top: 16.0, bottom: 16.0),
      child: Wrap(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                height: 6.0,
                width: 36.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Row(
                  children: [
                    ImageNetworkWidget(
                      imageUrl: url ?? '',
                      height: 64.0,
                      width: 64.0,
                      radius: 12.0,
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            track?.name ?? '',
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${album ?? ''} • ${track?.artists ?? ''}",
                            style: Theme.of(context).textTheme.labelMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: Icon(
              isFavorite ?? false
                  ? Icons.favorite_rounded
                  : Icons.favorite_border,
            ),
            title: Text(
              isFavorite ?? false ? 'Remove from Favorite' : 'Add to Favorite',
            ),
            onTap: addRemoveFavorite,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.queue_music_rounded),
            title: const Text('Add to Playlist'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.multitrack_audio_rounded),
            title: const Text('Add to Queue'),
            onTap: addItemToPlaybackQueue,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.album_rounded),
            title: const Text('View Album'),
            onTap: () {},
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: const Icon(Icons.copy_rounded),
            title: const Text('Copy Link'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
