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
    final data = context.watch<PlayerViewModel>().data;
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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ImageNetworkWidget(
                  imageUrl: data.playerData.image ?? '',
                  radius: 12.0,
                ),
              ),
              Slider(
                max: data.playerData.durationMs?.toDouble() ?? 0,
                value: model.data.positionMs,
                onChangeEnd: (double position) =>
                    model.seekToPosition(position),
                onChanged: (double position) =>
                    model.onChangePosition(position),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    DateFormat('mm:ss').format(
                      DateTime.fromMillisecondsSinceEpoch(
                        model.data.positionMs.toInt(),
                      ),
                    ),
                  ),
                  Text(
                    DateFormat('mm:ss').format(
                      DateTime.fromMillisecondsSinceEpoch(
                        data.playerData.durationMs ?? 0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.playerData.name ?? ''),
                      Text(data.playerData.artist ?? ''),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_rounded))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => model.togglePlaybackShuffle(),
                    icon: Icon(
                      Icons.shuffle_rounded,
                      color: data.playerData.shuffleState ?? false
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () => model.skipToPrevious(),
                    icon: const Icon(Icons.skip_previous_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      data.playerData.isPlaying ?? true
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                    ),
                  ),
                  IconButton(
                    onPressed: () => model.skipToNext(),
                    icon: const Icon(Icons.skip_next_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.repeat_rounded),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => model.openTransferPlayback(context),
                    icon: const Icon(Icons.devices),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share_rounded),
                      ),
                      IconButton(
                        onPressed: () => model.usersQueue(context),
                        icon: const Icon(Icons.playlist_play_rounded),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
