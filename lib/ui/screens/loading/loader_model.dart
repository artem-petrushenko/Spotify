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
    final isAuth = await _authService.isAuth();
    final nextScreen = isAuth
        ? MainNavigationRouteNames.mainScreen
        : MainNavigationRouteNames.getStartedScreen;
    Navigator.pushReplacementNamed(context, nextScreen);
  }
}
