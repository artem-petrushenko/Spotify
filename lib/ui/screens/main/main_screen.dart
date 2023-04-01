import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/main/main_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select((MainViewModel model) => model.selectedIndex);
    final model = context.read<MainViewModel>();
    final screens = context.select((MainViewModel model) => model.screens);
    return Scaffold(
      body: Stack(
        children: [
          screens[selectedIndex],
          if (model.data.status == Status.active)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => model.openPlayer(context),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  child: Column(
                    children: [
                      const LinearProgressIndicator(),
                      Row(
                        children: [
                          ImageNetworkWidget(
                            imageUrl: model.data.playerData.image ?? '',
                            height: 64.0,
                            width: 64.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    model.data.playerData.name ?? '',
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    model.data.playerData.artists ?? '',
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
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              model.data.playerData.isPlaying ?? false
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
            )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) =>
            context.read<MainViewModel>().onItemTapped(index),
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.navigation),
            icon: Icon(Icons.navigation_outlined),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2),
            icon: Icon(Icons.person_2_outlined),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
