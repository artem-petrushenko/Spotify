import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          left: 31.0,
          right: 31.0,
          top: 14.0,
          bottom: 20.0,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(42.0)),
                        child: Image.asset(
                          'assets/images/album.png',
                          width: 42.0,
                          height: 42.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Bad Guy',
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Billie Eilish',
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
            Slider(
              activeColor: const Color(0xFF434343),
              inactiveColor: const Color(0x4D000000),
              thumbColor: const Color(0xFF5C5C5C),
              value: 45,
              max: 100,
              min: 0,
              onChanged: (double value) {},
            ),
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/vectors/repeat.svg',
                  width: 21.0,
                  height: 21.0,
                  color: const Color(0xFF7E7E7E),
                ),
                SvgPicture.asset(
                  'assets/vectors/previous.svg',
                  width: 21.0,
                  height: 21.0,
                  color: const Color(0xFF363636),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
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
                  width: 21.0,
                  height: 21.0,
                  color: const Color(0xFF363636),
                ),
                SvgPicture.asset(
                  'assets/vectors/shuffle.svg',
                  width: 21.0,
                  height: 21.0,
                  color: const Color(0xFF7E7E7E),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/album.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: SafeArea(
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
                          Radius.circular(32.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/vectors/arrow_left.svg',
                          color: const Color(0xFFDEDDDD),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Now Playing',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: Color(0xFF7D7D7D),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top + 36.0,
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                bottom: 16.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/play.svg',
                      color: index == 1
                          ? const Color(0xFF1A9814)
                          : const Color(0x00000000),
                    ),
                    const SizedBox(width: 11.0),
                    Text(
                      'Sleepin, youre on your tippy toes',
                      style: index == 1
                          ? const TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            )
                          : const TextStyle(
                              color: Color(0x4DFFFFFF),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                    ),
                  ],
                );
              },
              itemCount: 35,
            ),
          )
        ],
      ),
    );
  }
}
