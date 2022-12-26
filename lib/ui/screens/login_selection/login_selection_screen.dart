import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSelectionScreen extends StatelessWidget {
  const LoginSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 31,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: Color(0x0A000000),
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        'assets/vectors/arrow_left.svg',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -28,
                right: 0,
                child: SvgPicture.asset('assets/vectors/radial_first.svg'),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset('assets/vectors/radial_second.svg'),
          ),
          Positioned(
            bottom: -20,
            left: -10,
            child: Image.asset('assets/images/register_sign_in_background.png'),
          ),
          const ContentWidget(),
        ],
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/vectors/logo.svg'),
          const SizedBox(height: 55),
          const Text(
            'Enjoy Listen The Music',
            style: TextStyle(
                color: Color(0xFF383838),
                fontSize: 26.0,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 21),
          const Text(
            'Spotify is a proprietary Swedish audio streaming and media services provider',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF797979),
                fontSize: 17.0,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 23.0, horizontal: 37.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF42C83C),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/login_selection/sign_in'),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 128.0),
        ],
      ),
    );
  }
}
