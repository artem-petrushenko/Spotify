import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/auth_service.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class SettingViewModel extends ChangeNotifier {
  final _authService = AuthService();

  Future<void> logout(BuildContext context) async {
    _authService.logout();
    MainNavigation.resetNavigation(context);
  }
}
