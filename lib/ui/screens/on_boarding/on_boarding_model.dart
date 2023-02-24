import 'package:flutter/material.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class OnBoardingViewModel extends ChangeNotifier {
  final pageController = PageController();

  int currentIndex = 0;

  void openNextView() => pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );

  void onChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void openSignInScreen(BuildContext context) =>
      Navigator.pushNamed(context, MainNavigationRouteNames.signInScreen);
}
