import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/player/player_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class PlayerIsSuccessScreen extends StatelessWidget {
  const PlayerIsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PlayerViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => model.closedPlayer(context),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () => model.openTransferPlayback(context),
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
                imageUrl: model.data.playerData.image ?? '',
                radius: 12.0,
              ),
            ),
          ),
          Slider(
            max: model.data.playerData.durationMs ?? 0,
            value: model.data.playerData.progressMs ?? 0,
            onChangeEnd: (double position) => model.seekToPosition(position),
            onChanged: (double position) => model.onChangePosition(position),
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
                          model.data.playerData.progressMs?.toInt() ?? 0,
                        ),
                      )
                      .toString(),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          model.data.playerData.name ?? '',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          model.data.playerData.artists ?? '',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  DateFormat('mm:ss')
                      .format(
                        DateTime.fromMillisecondsSinceEpoch(
                          model.data.playerData.durationMs?.toInt() ?? 0,
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
        onPressed: () => model.pauseStartResumePlayback(),
        elevation: 0,
        child: Icon(
          model.data.playerData.isPlaying ?? false
              ? Icons.pause_rounded
              : Icons.play_arrow_rounded,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.shuffle_rounded,
                color: model.data.playerData.shuffleState ?? false
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
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
              onPressed: () => model.setRepeatMode(),
            ),
          ],
        ),
      ),
    );
  }
}
