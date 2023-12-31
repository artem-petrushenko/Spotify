import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_client/src/feature/authentication/bloc/login/authentication_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 24.0),
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) => state.maybeMap(
            notAuthenticated: (state) => ElevatedButton(
              onPressed: () => context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.signInWithOAuth()),
              child: const Text('SIGN IN'),
            ),
            orElse: () => const ElevatedButton(
              onPressed: null,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) => state.mapOrNull(
          failure: (state) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.toString())),
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Welcome'),
                Text('Log In into Spotify to Continue'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
