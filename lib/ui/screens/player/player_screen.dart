import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';

import 'package:spotify_client/ui/screens/player/player_view_model.dart';

import 'package:spotify_client/ui/screens/player/screen_status/player_error_screen.dart';
import 'package:spotify_client/ui/screens/player/screen_status/player_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/player/screen_status/player_is_success_screen.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<PlayerViewModel>();
    return StreamBuilder<CurrentlyPlayingTrackModel>(
      stream: model.getCurrentlyPlayingTrack(),
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
              return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined),
                    )
                  ],
                ),
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ImageNetworkWidget(
                          imageUrl:
                              snapshot.data?.item?.album?.images?.first.url ??
                                  '',
                          radius: 12.0,
                        ),
                      ),
                    ),
                    Slider(
                      max: snapshot.data?.item?.durationMs?.toDouble() ?? 0,
                      value: snapshot.data?.progressMs?.toDouble() ?? 0,
                      onChangeEnd: (double position) =>
                          model.seekToPosition(position),
                      onChanged: (double position) =>
                          model.onChangePosition(position),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DateFormat('mm:ss')
                                .format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                    snapshot.data?.progressMs?.toInt() ?? 0,
                                  ),
                                )
                                .toString(),
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data?.item?.name ?? '',
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    snapshot.data?.item?.artists
                                            ?.map((e) => e.name)
                                            .join(', ') ??
                                        '',
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            DateFormat('mm:ss')
                                .format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                    snapshot.data?.item?.durationMs?.toInt() ??
                                        0,
                                  ),
                                )
                                .toString(),
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  elevation: 0,
                  child: Icon(
                    snapshot.data?.isPlaying ?? false
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endContained,
                bottomNavigationBar: BottomAppBar(
                  elevation: 0,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.shuffle_rounded),
                        onPressed: () => model.togglePlaybackShuffle(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_previous_rounded),
                        onPressed: () => model.skipToPrevious(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_next_rounded),
                        onPressed: () => model.skipToNext(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.repeat_rounded),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              );
            case ConnectionState.done:
              return const Text('done');
          }
        }
      },
    );
    // final status = context.select((PlayerViewModel model) => model.data.status);
    // switch (status) {
    //   case Status.loading:
    //     return const PlayerInProgressScreen();
    //   case Status.completed:
    //     return const PlayerIsSuccessScreen();
    //   case Status.error:
    //     return const PlayerErrorScreen();
    // }
  }
}
