import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
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
                        child:
                            SvgPicture.asset('assets/vectors/arrow_left.svg'),
                      ),
                    ),
                  ),
                  const Text(
                    'Now Playing',
                    style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Color(0xFF545454),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22.0),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  'assets/images/album.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 17.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Bad Guy',
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      'Billie Eilish',
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  'assets/vectors/liked_off.svg',
                  width: 24.0,
                  height: 24.0,
                  color: const Color(0xFF6C6C6C),
                ),
              ],
            ),
            const SizedBox(height: 42.0),
            Slider(
              activeColor: const Color(0xFF434343),
              inactiveColor: const Color(0x4D000000),
              thumbColor: const Color(0xFF5C5C5C),
              value: 45,
              max: 100,
              min: 0,
              onChanged: (double value) {},
            ),
            const SizedBox(height: 6.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '2:25',
                  style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '4:02',
                  style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 46.0),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/vectors/repeat.svg',
                  width: 24.0,
                  height: 24.0,
                  color: const Color(0xFF7E7E7E),
                ),
                SvgPicture.asset(
                  'assets/vectors/previous.svg',
                  width: 26.0,
                  height: 26.0,
                  color: const Color(0xFF363636),
                ),
                Container(
                  padding: const EdgeInsets.all(22.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF42C83C),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                  child: SizedBox(
                    width: 28.0,
                    height: 28.0,
                    child: SvgPicture.asset(
                      'assets/vectors/pause.svg',
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/vectors/next.svg',
                  width: 26.0,
                  height: 26.0,
                  color: const Color(0xFF363636),
                ),
                SvgPicture.asset(
                  'assets/vectors/shuffle.svg',
                  width: 24.0,
                  height: 24.0,
                  color: const Color(0xFF7E7E7E),
                ),
              ],
            ),
            const SizedBox(height: 33.0),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, MainNavigationRouteNames.lyricsScreen),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/vectors/arrow_up.svg',
                    width: 31.0,
                    height: 31.0,
                    color: const Color(0xFF414141),
                  ),
                  const Text(
                    'Lyrics',
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
