import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/ui/navigation/router.dart';

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

  void openSignInScreen(BuildContext context) => context.push(GoRouterNames.signInScreen);
}
