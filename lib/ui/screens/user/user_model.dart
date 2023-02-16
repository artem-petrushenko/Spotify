import 'package:flutter/material.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class UserViewModel extends ChangeNotifier{
  void openUserProfile(BuildContext context) {
    Navigator.pushNamed(context, MainNavigationRouteNames.userProfileScreen);
}
}