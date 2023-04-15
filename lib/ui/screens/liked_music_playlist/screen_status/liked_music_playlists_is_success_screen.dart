import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_model.dart';

class LikedMusicPlaylistIsSuccessScreen extends StatelessWidget {
  const LikedMusicPlaylistIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final music =
        context.select((LikedMusicPlaylistViewModel model) => model.data.music);
    final model = context.read<LikedMusicPlaylistViewModel>();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            // floating: true,
            pinned: true,
            // snap: true,
            centerTitle: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Liked Music'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                model.showedMusicAtIndex(index);
                return Card(
                  elevation: 0,
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
                              child:
                                  Image.network(music[index].imageUrl ?? '')),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  music[index].name ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Row(
                                  children: [
                                    if (model.data.music[index].explicit ==
                                        true)
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 4.0),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .surfaceVariant,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(2.0),
                                          ),
                                        ),
                                        child: Text(
                                          'EXPLICIT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSurfaceVariant),
                                        ),
                                      ),
                                    Text(
                                      music[index].artists ?? '',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: music.length,
            ),
          ),
          if (context.watch<LikedMusicPlaylistViewModel>().isLoading)
            const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            )
        ],
      ),
    );
  }
}
