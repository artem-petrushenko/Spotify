import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/sign_in/sign_in_model.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading =
        context.select((SignInViewModel model) => model.isLoading);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 24.0),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          onPressed: () => isLoading
              ? null
              : context.read<SignInViewModel>().authentication(context),
          child: isLoading
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.0),
                  child: CircularProgressIndicator(),
                )
              : const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                      letterSpacing: 8.0,
                    ),
                  ),
                ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Log In into Spotify to Continue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
