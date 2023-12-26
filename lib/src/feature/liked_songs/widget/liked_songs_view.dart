import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_client/src/common/widget/state/empty_state.dart';
import 'package:spotify_client/src/common/widget/state/failure_state.dart';
import 'package:spotify_client/src/feature/liked_songs/bloc/liked_songs_bloc.dart';

class LikedSongsView extends StatelessWidget {
  const LikedSongsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liked Songs'),
      ),
      body: BlocConsumer<LikedSongsBloc, LikedSongsState>(
        listener: (context, state) {
          state.mapOrNull(
            failure: (state) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            ),
          );
        },
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: state.map(
            loading: (_) => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => Card(
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
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surfaceVariant,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 128.0,
                              height: 16.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Theme.of(context)
                                    .colorScheme
                                    .surfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 6.0),
                            Container(
                              width: 80.0,
                              height: 16.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                color: Theme.of(context)
                                    .colorScheme
                                    .surfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            empty: (_) => const EmptyState(),
            success: (state) => CustomScrollView(
              slivers: [
                SliverList.builder(
                  itemBuilder: (BuildContext context, int index) {
                    if (index >= state.tracks.length - 1) {
                      context
                          .read<LikedSongsBloc>()
                          .add(const LikedSongsEvent.fetchLikedSongs());
                    }
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0)),
                                child: Image.network(state.tracks[index].track
                                        ?.album?.images?.first.url ??
                                    ''),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.tracks[index].track?.name ?? '',
                                      maxLines: 1,
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Row(
                                      children: [
                                        if (state.tracks[index].track
                                                ?.explicit ==
                                            true)
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 4.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 2.0),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .surfaceVariant,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(2.0),
                                              ),
                                            ),
                                            child: Text(
                                              'E',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSurfaceVariant),
                                            ),
                                          ),
                                        Expanded(
                                          child: Text(
                                            state.tracks[index].track?.artists
                                                    ?.map((e) => e.name)
                                                    .toList()
                                                    .join(', ') ??
                                                '',
                                            maxLines: 1,
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
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
                  itemCount: state.tracks.length,
                ),
                if (!state.hasReachedMax)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            ),
            failure: (_) => const FailureState(),
          ),
        ),
      ),
    );
  }
}
