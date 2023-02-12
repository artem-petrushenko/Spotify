import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoaderScreen extends StatelessWidget {
  const LoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset('assets/vectors/logo.svg'),
      ),
    );
  }
}
