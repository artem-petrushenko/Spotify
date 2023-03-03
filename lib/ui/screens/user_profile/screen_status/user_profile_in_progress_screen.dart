import 'package:flutter/material.dart';

import 'package:spotify_client/ui/widgets/loading_container_widget.dart';

class UserProfileInProgressScreen extends StatelessWidget {
  const UserProfileInProgressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      LoadingContainerWidget(width: 128.0, height: 24.0)
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      LoadingContainerWidget(width: 80.0, height: 16.0),
                      SizedBox(width: 8.0),
                      LoadingContainerWidget(width: 80.0, height: 16.0),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const LoadingContainerWidget(width: 128.0, height: 24.0),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LoadingContainerWidget(width: 48.0, height: 48.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              LoadingContainerWidget(
                                  width: 128.0, height: 16.0),
                              SizedBox(height: 8.0),
                              LoadingContainerWidget(width: 64.0, height: 16.0),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LoadingContainerWidget(width: 48.0, height: 48.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              LoadingContainerWidget(
                                  width: 128.0, height: 16.0),
                              SizedBox(height: 8.0),
                              LoadingContainerWidget(width: 64.0, height: 16.0),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  LoadingContainerWidget(width: 80.0, height: 16.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
