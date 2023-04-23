import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

import 'package:spotify_client/domain/services/auth_service.dart';

import 'package:spotify_client/ui/navigation/router.dart';

class SignInViewModel extends ChangeNotifier {
  final _authService = AuthService();

  String? errorMessage;
  final Map<String, String>? queryParameters;
  final BuildContext context;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  SignInViewModel(this.context, this.queryParameters) {
    if (queryParameters != null) {
      treatmentDeeplink(context, queryParameters!);
    }
  }

  void _updateButtonStatus(bool status) {
    _isLoading = status;
    notifyListeners();
  }

  Future<void> authentication(BuildContext context) async {
    _updateButtonStatus(true);
    try {
      _authService.makeRequestBrowser();
    } catch (e) {}
    _updateButtonStatus(false);
  }

  Future<String?> _handleDeeplink(Map<String, String> queryParameters) async {
    try {
      await _authService.handleDeeplink(queryParameters);
    } on ApiAuthException catch (e) {
      _isLoading = false;
      notifyListeners();
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
      _isLoading = false;
      notifyListeners();
      return 'An error has occurred. Try again';
    }
    return null;
  }

  Future<void> treatmentDeeplink(
    BuildContext context,
    Map<String, String> queryParameters,
  ) async {
    _updateButtonStatus(true);
    errorMessage = await _handleDeeplink(queryParameters);
    if (errorMessage == null) {
      context.go(GoRouterNames.loaderScreen);
    }
    _updateButtonStatus(false);
  }
}
