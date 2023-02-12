import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/auth_service.dart';

import 'package:spotify_client/domain/api_client/api_client_exception.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class SignInViewModel {
  final _authService = AuthService();

  String? _errorMessage;
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
    } on ApiClientException catch (e) {
      switch (e.type) {
        case ApiClientExceptionType.network:
        case ApiClientExceptionType.auth:
        case ApiClientExceptionType.other:
        case ApiClientExceptionType.accessDenied:
      }
    } catch (e) {}
  }

  Future<String?> _handleDeeplink(Map<String, String> queryParameters) async {
    try {
      await _authService.getData(queryParameters);
    } on ApiClientException catch (e) {
      switch (e.type) {
        case ApiClientExceptionType.network:
          return 'Server is not available';
        case ApiClientExceptionType.auth:
        case ApiClientExceptionType.other:
          return 'An error has occurred. Try again';
        case ApiClientExceptionType.accessDenied:
      }
    } catch (e) {
      return 'An error has occurred. Try again';
    }
    return null;
  }

  Future<void> treatmentDeeplink(BuildContext context, Map<String, String> queryParameters) async {
    _errorMessage = await _handleDeeplink(queryParameters);
    if (_errorMessage == null) {
      MainNavigation.resetNavigation(context);
    }
  }
}
