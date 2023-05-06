import 'package:flutter/material.dart';

import 'package:spotify_client/utils/constants/numbers.dart';

class AlbumTrackWidget extends StatelessWidget {
  final String? name;
  final String? authors;
  final VoidCallback detailsTrack;
  final VoidCallback playTrack;

  const AlbumTrackWidget({
    Key? key,
    required this.name,
    required this.authors,
    required this.detailsTrack,
    required this.playTrack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor:
          Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.24),
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      onTap: () => playTrack(),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (name != null)
                    Text(
                      name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  if (authors != null)
                    Text(
                      authors ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () => detailsTrack(),
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
