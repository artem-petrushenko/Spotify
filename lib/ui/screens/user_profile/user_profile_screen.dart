import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';

import 'package:spotify_client/ui/screens/user_profile/screen_status/user_profile_error_screen.dart';
import 'package:spotify_client/ui/screens/user_profile/screen_status/user_profile_in_progress_screen.dart';
import 'package:spotify_client/ui/screens/user_profile/screen_status/user_profile_is_success_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status =
        context.select((UserProfileViewModel model) => model.data.status);
    switch (status) {
      case Status.loading:
        return const UserProfileInProgressScreen();
      case Status.completed:
        return const UserProfileIsSuccessScreen();
      case Status.error:
        return const UserProfileErrorScreen();
    }
  }
}
