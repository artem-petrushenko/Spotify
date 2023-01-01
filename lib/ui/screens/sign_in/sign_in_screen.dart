import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
              Center(
                child: SvgPicture.asset(
                  'assets/vectors/logo.svg',
                  height: 33,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
            left: 28.0, right: 28.0, top: 70.0, bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                color: Color(0xFF383838),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 22.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'If You Need Any Support',
                  style: TextStyle(
                    color: Color(0xFF383838),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Click Here',
                    style: TextStyle(
                      color: Color(0xFF38B432),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22.0),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color(0x33000000),
              cursorRadius: Radius.circular(2.0),
              style: TextStyle(
                color: Color(0x99383838),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: 'Enter Username Or Email',
                hintStyle: TextStyle(
                  color: Color(0x99383838),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 27.0, horizontal: 29.0),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0x33000000),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              cursorColor: const Color(0x33000000),
              cursorRadius: const Radius.circular(2.0),
              style: const TextStyle(
                color: Color(0x99383838),
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                suffixIconConstraints: const BoxConstraints(maxHeight: 25.5),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 27),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/vectors/hide.svg'), //TODO
                  ),
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(
                  color: Color(0x99383838),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 27.0, horizontal: 29.0),
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(width: 1.0, color: Color(0x33000000)),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Recovery Password',
                    style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22.0),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, MainNavigationRouteNames.mainScreen),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 27.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF42C83C),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 21.0),
            Row(
              children: const [
                Expanded(child: Divider(height: 1, color: Color(0xFFB0B0B0))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(child: Divider(height: 1, color: Color(0xFFB0B0B0))),
              ],
            ),
            const SizedBox(height: 38.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/vectors/apple.svg')),
                const SizedBox(width: 32),
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/vectors/google.svg')),
              ],
            ),
            const SizedBox(height: 57.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not A Member?',
                  style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 4.0),
                Text(
                  'Register Now',
                  style: TextStyle(
                      color: Color(0xFF288CE9),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
