import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/choose_mode_background.png',
              color: const Color(0xB3000000),
              colorBlendMode: BlendMode.hardLight,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 37.0, left: 33.0, right: 33.0, bottom: 69.0),
            child: Column(
              children: [
                Expanded(
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset('assets/vectors/logo.svg')),
                ),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                    color: Color(0xFFDADADA),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 75.0,
                            sigmaY: 75.0,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(18.0),
                            decoration: const BoxDecoration(
                                color: Color(0x03FFFFFF),
                                backgroundBlendMode: BlendMode.softLight),
                            child: SizedBox(
                              height: 29.0,
                              width: 29.0,
                              child: SvgPicture.asset(
                                  'assets/vectors/dark_mode.svg'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17.0),
                      const Text(
                        'Dark Mode',
                        style: TextStyle(
                            color: Color(0xFFDADADA),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
                    Column(children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 75.0,
                              sigmaY: 75.0,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(18.0),
                              decoration: const BoxDecoration(
                                  color: Color(0x03FFFFFF),
                                  backgroundBlendMode: BlendMode.softLight),
                              child: SizedBox(
                                height: 29.0,
                                width: 29.0,
                                child: SvgPicture.asset(
                                    'assets/vectors/light_mode.svg'),
                              ),
                            )),
                      ),
                      const SizedBox(height: 17.0),
                      const Text(
                        'Light Mode',
                        style: TextStyle(
                            color: Color(0xFFDADADA),
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
                  ],
                ),
                const SizedBox(height: 70.0),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, MainNavigationRouteNames.loginSelectionScreen),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 27.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF42C83C),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
