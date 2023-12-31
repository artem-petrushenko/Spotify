import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/src/feature/authentication/bloc/login/authentication_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context
              .read<AuthenticationBloc>()
              .add(const AuthenticationEvent.signOut()),
          child: const Text('Log Out'),
        ),
      ),
    );
  }
}
