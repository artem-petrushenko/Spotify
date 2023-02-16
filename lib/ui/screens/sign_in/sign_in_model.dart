import 'package:flutter/material.dart';

import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

import 'package:spotify_client/domain/services/auth_service.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class SignInViewModel {
  final _authService = AuthService();

  String? errorMessage;
  final Map<String, String>? queryParameters;
  final BuildContext context;

  SignInViewModel(this.context, this.queryParameters) {
    if (queryParameters != null) {
      treatmentDeeplink(context, queryParameters!);
    }
  }

  Future<void> authentication(BuildContext context) async {
    try {
      _authService.makeRequestBrowser();
    } catch (e) {}
  }

  Future<String?> _handleDeeplink(Map<String, String> queryParameters) async {
    try {
      await _authService.handleDeeplink(queryParameters);
    } on ApiAuthException catch (e) {
      switch (e.type) {
        case ApiAuthExceptionType.accessDenied:
          return 'accessDenied';
        case ApiAuthExceptionType.network:
          return 'network';
        case ApiAuthExceptionType.incorrectState:
          return 'incorrectState';
        case ApiAuthExceptionType.other:
          return 'other';
      }
    } catch (e) {
      return 'An error has occurred. Try again';
    }
    return null;
  }

  Future<void> treatmentDeeplink(
    BuildContext context,
    Map<String, String> queryParameters,
  ) async {
    errorMessage = await _handleDeeplink(queryParameters);
    print(errorMessage);

    if (errorMessage == null) {
      MainNavigation.resetNavigation(context);
    }
  }
}
