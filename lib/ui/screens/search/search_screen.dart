import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/search/search_view_model.dart';
import 'package:spotify_client/ui/widgets/image_network_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SearchViewModel>();
    final searchData =
        context.select((SearchViewModel model) => model.searchData);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0  ,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: const BorderRadius.all(Radius.circular(100))
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(20),
              child: TextField(
                onChanged: model.searchItem,
                decoration: const InputDecoration(
                  icon: Icon(Icons.place),
                  enabledBorder: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: AspectRatio(
                    aspectRatio: 1,
                    child: ImageNetworkWidget(
                      imageUrl: searchData?[index].image ?? '',
                      radius: 4.0,
                    ),
                  ),
                  title: Text(
                    searchData?[index].title ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  subtitle: Text(
                    searchData?[index].subtitle ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                  ),
                  visualDensity: VisualDensity.compact,
                  dense: true,
                );
              },
              childCount: searchData?.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
