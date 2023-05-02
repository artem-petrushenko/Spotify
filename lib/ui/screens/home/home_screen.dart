import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/home/home_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((HomeViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const Scaffold(body: Center(child: Text('Loading')));
      case Status.completed:
        final newReleasesModel = context
            .select((HomeViewModel model) => model.data.newReleasesModel);
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('Home'),
                centerTitle: true,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: PageView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: ImageNetworkWidget(
                                imageUrl: newReleasesModel.albums?.items?[index]
                                        .images?.first.url ??
                                    '',

                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: newReleasesModel.albums?.items?.length,
                  ),
                ),
              ),
            ],
          ),
        );
      case Status.error:
        return const Scaffold(body: Center(child: Text('Error')));
    }
  }
}
