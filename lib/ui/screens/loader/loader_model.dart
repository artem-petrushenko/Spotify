import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/auth_service.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class LoaderViewModel {
  final BuildContext context;
  final _authService = AuthService();

  LoaderViewModel(this.context) {
    checkAuth();
  }

  Future<void> checkAuth() async {
    // await Future<void>.delayed(const Duration(minutes: 60));
    final isAuth = await _authService.isAuth();
    if (isAuth == true) await _authService.requestRefreshedAccessToken();

    final nextScreen = isAuth
        ? MainNavigationRouteNames.mainScreen
        : MainNavigationRouteNames.onBoardingScreen;
    Navigator.pushReplacementNamed(context, nextScreen);
  }
}
