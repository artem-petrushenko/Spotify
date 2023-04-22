import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/services/auth_service.dart';
import 'package:spotify_client/ui/navigation/router.dart';

class LoaderViewModel {
  final BuildContext context;
  final _authService = AuthService();

  LoaderViewModel(this.context) {
    checkAuth();
  }

  Future<void> checkAuth() async {
    final isAuth = await _authService.isAuth();
    if (isAuth == true) await _authService.requestRefreshedAccessToken();

    final nextScreen = isAuth
        ? GoRoutePath.homeScreen
        : GoRoutePath.onBoardingScreen;
    context.go(nextScreen);
  }
}
