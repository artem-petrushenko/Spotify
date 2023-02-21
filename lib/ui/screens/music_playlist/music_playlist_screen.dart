import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/music_playlist/music_playlist_model.dart';

class MusicPlaylistScreen extends StatelessWidget {
  const MusicPlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((MusicPlaylistModel model) => model.data.isLoading);
    final music =
        context.select((MusicPlaylistModel model) => model.data.music);
    if (isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('M U S I C'),
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemBuilder: (BuildContext context, int index) =>
            TrackItemWidget(music: music[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8.0),
        itemCount: music.length,
      ),
    );
  }
}

class TrackItemWidget extends StatelessWidget {
  final MusicPlaylistData music;

  const TrackItemWidget({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image.network(
        //   music.imageUrl ?? '',
        //   height: 48.0,
        //   width: 48.0,
        //   errorBuilder: (context, object, trace) =>
        //       const Icon(Icons.error_outline),
        //   loadingBuilder: (context, child, loadingProgress) {
        //     if (loadingProgress == null) {
        //       return child;
        //     }
        //     return CircularProgressIndicator();
        //   },
        // ),
        CachedNetworkImage(
          imageUrl: music.imageUrl ?? '',
          imageBuilder: (context, imageProvider) => ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            child: Container(
              height: 48.0,
              width: 48.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, dynamic error) => const Icon(Icons.error),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                music.name ?? '',
                maxLines: 1,
              ),
              Text(
                music.artists ?? '',
                maxLines: 1,
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
      ],
    );
  }
}
