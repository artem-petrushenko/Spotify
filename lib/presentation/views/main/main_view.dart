import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/presentation/bloc/bloc/mini_player/mini_player_bloc.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';

import 'package:spotify_client/config/router/router.dart';

import 'package:spotify_client/presentation/bloc/bloc/network/network_bloc.dart';

class MainView extends StatelessWidget {
  const MainView(
    this.child, {
    Key? key,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MiniPlayerBloc>();
    return Scaffold(
      body: child,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<NetworkBloc, NetworkState>(
            builder: (context, state) {
              return switch (state) {
                NetworkLoading() => const SizedBox.shrink(),
                NetworkSuccess() => const SizedBox.shrink(),
                NetworkFailure() => Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.error),
                    child: Text(
                      'No Internet Connection Available',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onError),
                    ),
                  ),
              };
            },
          ),
          BlocListener<MiniPlayerBloc, MiniPlayerState>(
            listener: (context, state) {
              if (state is MiniPlayerFailureState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error.toString()),
                  ),
                );
              }
            },
            child: BlocBuilder<MiniPlayerBloc, MiniPlayerState>(
              builder: (context, state) {
                return switch (state) {
                  MiniPlayerLoadingState() => const SizedBox.shrink(),
                  MiniPlayerActiveState() => GestureDetector(
                      onTap: () => context.push(GoRouterNames.playerScreen),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: Column(
                          children: [
                            LinearProgressIndicator(
                              value: (state.playback?.progressMs ?? 0) /
                                  (state.playback?.item?.durationMs ?? 1),
                            ),
                            Row(
                              children: [
                                ImageNetworkWidget(
                                  imageUrl: state.playback?.item?.album?.images
                                          ?.first.url ??
                                      '',
                                  height: 64.0,
                                  width: 64.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.playback?.item?.name ?? '',
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                        Text(
                                          state.playback?.item?.artists
                                                  ?.map((e) => e.name)
                                                  .toList()
                                                  .join(', ') ??
                                              '',
                                          maxLines: 1,
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => context.push(
                                      GoRouterNames.transferPlaybackScreen),
                                  icon: const Icon(Icons.devices_rounded),
                                ),
                                IconButton(
                                  onPressed: () => bloc.add(
                                    PauseStartPlaybackEvent(
                                      isPlaying:
                                          state.playback?.isPlaying ?? false,
                                    ),
                                  ),
                                  icon: Icon(
                                    state.playback?.isPlaying == true
                                        ? Icons.pause_rounded
                                        : Icons.play_arrow_rounded,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  MiniPlayerInactiveState() => const SizedBox.shrink(),
                  MiniPlayerFailureState() => const SizedBox.shrink(),
                };
              },
            ),
          ),
          NavigationBar(
            onDestinationSelected: (int index) {
              switch (index) {
                case 0:
                  context.go(GoRouterPath.homeScreen);
                case 1:
                  context.go(GoRouterPath.homeScreen);
                case 2:
                  context.go(GoRouterPath.mediaLibraryScreen);
              }
            },
            selectedIndex: 0,
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border),
                label: 'Search',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person_2),
                icon: Icon(Icons.person_2_outlined),
                label: 'Your Library',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
