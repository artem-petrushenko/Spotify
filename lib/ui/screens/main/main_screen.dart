import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _screenFactory = ScreenFactory();
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    if (_selectedIndex == index) return;

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: Image.asset(
                          'assets/images/album.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Bad Guy',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                            maxLines: 1,
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Billie Eilish',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/mixed.svg',
                            height: 24.0,
                            width: 24.0,
                          ),
                          const SizedBox(width: 8.0),
                          SvgPicture.asset(
                            'assets/vectors/liked_off.svg',
                            height: 24.0,
                            width: 24.0,
                          ),
                          const SizedBox(width: 8.0),
                          SvgPicture.asset(
                            'assets/vectors/play.svg',
                            height: 24.0,
                            width: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6.0),
                const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: LinearProgressIndicator(minHeight: 2.0)),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 64.0,
            color: const Color(0xFFFFFFFF),
            child: TabBar(
              splashFactory: NoSplash.splashFactory,
              splashBorderRadius: BorderRadius.circular(16.0),
              onTap: (index) => onItemTapped(index),
              indicator: const CustomTabIndicator(radius: 8.0),
              tabs: [
                Tab(
                  icon: _selectedIndex == 0
                      ? SvgPicture.asset('assets/vectors/home_on.svg')
                      : SvgPicture.asset('assets/vectors/home_off.svg'),
                ),
                Tab(
                  icon: _selectedIndex == 1
                      ? SvgPicture.asset('assets/vectors/navigation_on.svg')
                      : SvgPicture.asset('assets/vectors/navigation_off.svg'),
                ),
                Tab(
                  icon: _selectedIndex == 2
                      ? SvgPicture.asset('assets/vectors/liked_on.svg')
                      : SvgPicture.asset('assets/vectors/liked_off.svg'),
                ),
                Tab(
                  icon: _selectedIndex == 3
                      ? SvgPicture.asset('assets/vectors/user_on.svg')
                      : SvgPicture.asset('assets/vectors/user_off.svg'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _screenFactory.makeHome(),
              _screenFactory.makeNavigation(),
              _screenFactory.makeLiked(),
              _screenFactory.makeUser(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabIndicator extends Decoration {
  final double radius;

  const CustomTabIndicator({
    required this.radius,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return const CustomPainter(radius: 8.0);
  }
}

class CustomPainter extends BoxPainter {
  final double radius;

  const CustomPainter({required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    final double xAxisPos = offset.dx + configuration.size!.width / 2;
    const double yAxisPos = 2;
    // offset.dy + configuration.size!.height - 2.0;
    paint.color = const Color(0xFF42C83C);

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 4,
        height: 4.0,
      ),
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}
