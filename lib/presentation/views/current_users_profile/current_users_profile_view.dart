import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/current_users_profile/current_users_profile_bloc.dart';

import 'package:spotify_client/ui/widgets/image_network_widget.dart';
import 'package:spotify_client/ui/widgets/loading_container_widget.dart';

class CurrentUsersProfileView extends StatelessWidget {
  const CurrentUsersProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CurrentUsersProfileBloc, CurrentUsersProfileState>(
        listener: (context, state) {
          if (state is CurrentUsersProfileFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            );
          }
        },
        builder: (context, state) {
          return switch (state) {
            CurrentUsersProfileLoading() => CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    expandedHeight: 200,
                    elevation: 0,
                    pinned: true,
                    centerTitle: true,
                    stretch: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: ColoredBox(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              LoadingContainerWidget(width: 128.0, height: 24.0)
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              LoadingContainerWidget(width: 80.0, height: 16.0),
                              SizedBox(width: 8.0),
                              LoadingContainerWidget(width: 80.0, height: 16.0),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          LoadingContainerWidget(width: 128.0, height: 24.0),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: SizedBox(
                            height: 48.0,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LoadingContainerWidget(
                                    width: 48.0, height: 48.0),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LoadingContainerWidget(
                                          width: 128.0, height: 16.0),
                                      SizedBox(height: 8.0),
                                      LoadingContainerWidget(
                                          width: 64.0, height: 16.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 3,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LoadingContainerWidget(width: 80.0, height: 16.0),
                          SizedBox(height: 8.0),
                          LoadingContainerWidget(width: 128.0, height: 24.0),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: SizedBox(
                            height: 48.0,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LoadingContainerWidget(
                                    width: 48.0, height: 48.0),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LoadingContainerWidget(
                                          width: 128.0, height: 16.0),
                                      SizedBox(height: 8.0),
                                      LoadingContainerWidget(
                                          width: 64.0, height: 16.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 3,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LoadingContainerWidget(width: 80.0, height: 16.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            CurrentUsersProfileSuccess() => CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 200,
                    elevation: 0,
                    pinned: true,
                    centerTitle: true,
                    stretch: true,
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings_rounded,
                        ),
                      )
                    ],
                    flexibleSpace: const FlexibleSpaceBar(
                      background: ImageNetworkWidget(
                        imageUrl:  '',
                      ),
                      stretchModes: [
                        StretchMode.zoomBackground,
                        StretchMode.fadeTitle,
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.userProfile.displayName ?? '',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('${state.userProfile.followers?.total} followers'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Playlists',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Card(
                          elevation: 0,
                          clipBehavior: Clip.hardEdge,
                          child: SizedBox(
                            height: 48.0,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ImageNetworkWidget(
                                  imageUrl:
                                      'https://cdns-images.dzcdn.net/images/cover/c6e5ffd676146c447a4a81819c5d29ae/500x500.jpg',
                                  radius: 12.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Soundtracks',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Text(
                                          '$index subscribers',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 3,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Watch 7 Playlists'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Recently listened',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Card(
                          elevation: 0,
                          clipBehavior: Clip.hardEdge,
                          child: SizedBox(
                            height: 48.0,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ImageNetworkWidget(
                                  imageUrl:
                                      'https://cdns-images.dzcdn.net/images/cover/c6e5ffd676146c447a4a81819c5d29ae/500x500.jpg',
                                  radius: 12.0,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Billie Eillish',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        Text(
                                          '${(index + 1) * 52346} subscribers',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 3,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('More'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            CurrentUsersProfileFailure() => const Text("Failure"),
          };
        },
      ),
    );
  }
}
