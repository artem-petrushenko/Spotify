import 'package:flutter/material.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class TrackModel {
  String? imageUrl;
  String? name;
  String? album;
  String? artists;

  TrackModel({
    this.imageUrl,
    this.name,
    this.album,
    this.artists,
  });
}

class TrackModalBottomSheet extends StatelessWidget {
  final bool isFavorite;

  final TrackModel? trackModel;

  final VoidCallback addRemoveFavorite;
  final VoidCallback addToPlaylist;
  final VoidCallback addItemToPlaybackQueue;
  final VoidCallback viewAlbum;
  final VoidCallback copyLink;

  const TrackModalBottomSheet({
    super.key,
    required this.isFavorite,
    required this.addRemoveFavorite,
    required this.addToPlaylist,
    required this.addItemToPlaybackQueue,
    required this.viewAlbum,
    required this.copyLink, required this.trackModel,
  });

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
                      imageUrl: trackModel?.imageUrl ?? '',
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
                            trackModel?.name ?? '',
                            style: Theme.of(context).textTheme.labelLarge,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            <String>["${trackModel?.album}",  "${trackModel?.artists}", "${trackModel?.artists}"].join(' • '),
                            style: Theme.of(context).textTheme.labelMedium,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            softWrap: false,
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
              isFavorite ? Icons.favorite_rounded : Icons.favorite_border,
              color: isFavorite
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              isFavorite ? 'Liked' : 'Like',
            ),
            onTap: addRemoveFavorite,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: Icon(
              Icons.queue_music_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('Add to Playlist'),
            onTap: addToPlaylist,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: Icon(
              Icons.multitrack_audio_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('Add to Queue'),
            onTap: addItemToPlaybackQueue,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: Icon(
              Icons.album_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('View Album'),
            onTap: viewAlbum,
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            leading: Icon(
              Icons.copy_rounded,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('Copy Link'),
            onTap: copyLink,
          ),
        ],
      ),
    );
  }
}
