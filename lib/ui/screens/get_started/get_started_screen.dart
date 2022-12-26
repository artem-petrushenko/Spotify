import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/get_started_background.png',
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
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    color: Color(0xFFDADADA),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 21.0),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 37.0),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, MainNavigationRouteNames.chooseModeScreen),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 27.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF42C83C),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
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
