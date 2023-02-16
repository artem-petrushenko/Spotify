import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((UserProfileViewModel model) => model.data.isLoading);
    final email = context.select(
        (UserProfileViewModel model) => model.data.userProfileData.email);
    final displayName = context.select(
        (UserProfileViewModel model) => model.data.userProfileData.displayName);
    final totalFollowers = context.select((UserProfileViewModel model) =>
        model.data.userProfileData.totalFollowers);

    if (isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple[100],
            expandedHeight: 200,
            elevation: 0,
            floating: true,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink[100],
              ),
            ),
            title: const Text('1'),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 60,
              child: Column(
                children: [
                  if (email != null) Text(email),
                  if (displayName != null) Text(displayName),
                  if (totalFollowers != null) Text(totalFollowers),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color:
                      index.isOdd ? Colors.pink[100] : Colors.deepPurple[100],
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
