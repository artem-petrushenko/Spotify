import 'package:flutter/material.dart';

class UserProfileErrorScreen extends StatelessWidget {
  const UserProfileErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Error',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
