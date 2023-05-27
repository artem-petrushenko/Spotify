import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:spotify_client/config/router/router.dart';
import 'package:spotify_client/presentation/bloc/bloc/player/player_bloc.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PlayerBloc>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('title'),
                onTap: () => context.push(GoRouterNames.transferPlaybackScreen),
              ),
              PopupMenuItem(
                child: const Text('title'),
                onTap: () => context.push(GoRouterNames.usersQueueScreen),
              ),
            ],
          )
        ],
      ),
      body: BlocListener<PlayerBloc, PlayerState>(
        listener: (context, state) {
          if (state is PlayerFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            );
          }
        },
        child: BlocBuilder<PlayerBloc, PlayerState>(
          builder: (context, state) {
            return switch (state) {
              PlayerLoadingState() => const Text('1'),
              PlayerSuccessState() => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: ImageNetworkWidget(
                          imageUrl:
                              state.track.item?.album?.images?.first.url ?? '',
                          radius: 12.0,
                        ),
                      ),
                    ),
                    Slider(
                      // TODO: More correct display of slider dragging
                      max: state.track.item?.durationMs?.toDouble() ?? 0,
                      value: state.track.progressMs?.toDouble() ?? 0,
                      // onChangeEnd: (double position) => bloc.add(ChangePositionEvent(position: position)),
                      onChanged: (double position) =>
                          bloc.add(ChangePositionEvent(position: position)),
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
                                    state.track.progressMs?.toInt() ?? 0,
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
                                    state.track.item?.name ?? '',
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    state.track.item?.album?.artists
                                            ?.map((e) => e.name)
                                            .toList()
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
                                    state.track.item?.durationMs?.toInt() ?? 0,
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
              PlayerFailureState() => const Text('3'),
            };
          },
        ),
      ),
      floatingActionButton: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          if (state is PlayerSuccessState) {
            return FloatingActionButton(
              onPressed: () => bloc.add(StartResumePlaybackEvent(
                  isPlaying: state.track.isPlaying ?? false)),
              elevation: 0,
              child: Icon(
                state.track.isPlaying ?? false
                    ? Icons.pause_rounded
                    : Icons.play_arrow_rounded,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          if (state is PlayerSuccessState) {
            return BottomAppBar(
              elevation: 0,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.shuffle_rounded,
                      color: state.track.shuffleState ?? false
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    onPressed: () => bloc.add(
                      TogglePlaybackShuffleEvent(
                        shuffleState: state.track.shuffleState ?? false,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_previous_rounded),
                    onPressed: () => bloc.add(SkipToPreviousEvent()),
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next_rounded),
                    onPressed: () => bloc.add(SkipToNextEvent()),
                  ),
                  IconButton(
                    icon: const Icon(Icons.repeat_rounded),
                    onPressed: () => bloc.add(
                      SetRepeatModeEvent(
                        repeatState: state.track.repeatState ?? '',
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
