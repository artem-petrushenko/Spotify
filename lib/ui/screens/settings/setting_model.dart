import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/services/auth_service.dart';

import 'package:spotify_client/ui/navigation/router.dart';

class SettingViewModel extends ChangeNotifier {
  final _authService = AuthService();

  Future<void> logout(BuildContext context) async {
    _authService.logout();
    context.go(GoRoutePath.loaderScreen);
  }

  void openLocalization(BuildContext context) => context.push(GoRoutePath.localizationScreen);

  void openTheme(BuildContext context) => context.push(GoRoutePath.themeScreen);
}
