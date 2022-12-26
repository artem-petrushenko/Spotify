import 'package:flutter/material.dart';

class NavigationErrorScreen extends StatelessWidget {
  const NavigationErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Stack(
          children: const [
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '404',
                  style: TextStyle(
                    color: Color(0x6642C83C),
                    fontSize: 128.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'An unexpected error has occurred',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
