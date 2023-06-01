import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/artist/artist_bloc.dart';

import 'package:spotify_client/ui/widgets/loading_container_widget.dart';
import 'package:spotify_client/utils/constants/numbers.dart';

class ArtistView extends StatelessWidget {
  const ArtistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ArtistBloc, ArtistState>(
        listener: (context, state) {
          if (state is ArtistFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            );
          }
        },
        builder: (context, state) {
          final scrollController = ScrollController();
          return switch (state) {
            ArtistLoading() => CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    collapsedHeight: 60,
                    expandedHeight: 360,
                    centerTitle: true,
                    pinned: true,
                    stretch: true,
                    elevation: 0,
                    leading: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                    flexibleSpace: const LoadingContainerWidget(
                      width: double.infinity,
                      height: double.infinity,
                      radius: 0.0,
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                      vertical: verticalPadding,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: LoadingContainerWidget(
                                  height: 64.0,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: LoadingContainerWidget(
                                  height: 64.0,
                                  width: double.infinity,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 32.0),
                          LoadingContainerWidget(
                            height: 16.0,
                            width: 128.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: LoadingContainerWidget(
                            height: 48.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ArtistSuccess() => CustomScrollView(
                controller: scrollController,
                slivers: const [
                  // ArtistAppBarWidget(),
                  // ArtistInformationWidget(),
                  // ArtistGenresListWidget(),
                  // ArtistPopularTracksWidget(),
                  // ArtistTopTracksListWidget(),
                  // ArtistPopularReleasesWidget(),
                  // ArtistAlbumsListWidget(),
                  // ArtistAlbumsOpenWidget(),
                  // ArtistRelatedArtistsListWidget(),
                  // SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                ],
              ),
            ArtistFailure() => const Center(child: Text('Error')),
          };
        },
      ),
    );
  }
}
