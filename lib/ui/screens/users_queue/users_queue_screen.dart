import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/domain/entity/player/users_queue.dart';

import 'package:spotify_client/ui/screens/users_queue/users_queue_view_model.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class UsersQueueScreen extends StatelessWidget {
  const UsersQueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<UsersQueueViewModel>();
    return StreamBuilder<UsersQueueModel>(
      stream: model.getTheUsersQueue(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('error');
        } else {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Text('none');
            case ConnectionState.waiting:
              return const Text('waiting');
            case ConnectionState.active:
              {
                return Scaffold(
                  body: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: Text('Now Playing'),
                      ),
                      SliverToBoxAdapter(
                        child: ListTile(
                          leading: ImageNetworkWidget(
                            imageUrl: snapshot.data?.currentlyPlaying?.album
                                    ?.images?.first.url ??
                                '',
                            width: 48.0,
                            height: 48.0,
                            radius: 8.0,
                          ),
                          title:
                              Text(snapshot.data?.currentlyPlaying?.name ?? ''),
                          subtitle: Text(snapshot
                                  .data?.currentlyPlaying?.artists
                                  ?.map((e) => e.name)
                                  .toList()
                                  .join(', ') ??
                              ''),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: Text('Next Playing'),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ListTile(
                              dense: true,
                              visualDensity: VisualDensity.compact,
                              trailing: const Icon(Icons.playlist_play_rounded),
                              leading: Checkbox(
                                value: true,
                                onChanged: (bool? value) {},
                              ),
                              title:
                                  Text(snapshot.data?.queue?[index].name ?? ''),
                              subtitle: Text(snapshot
                                      .data?.currentlyPlaying?.artists
                                      ?.map((e) => e.name)
                                      .toList()
                                      .join(', ') ??
                                  ''),
                            );
                          },
                          childCount: snapshot.data?.queue?.length,
                        ),
                      ),
                    ],
                  ),
                );
              }
            case ConnectionState.done:
              return const Text('done');
          }
        }
      },
    );
  }
}
