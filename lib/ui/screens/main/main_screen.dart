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
          bottomNavigationBar: Container(
            height: 64.0,
            // decoration: BoxDecoration(
            //   color: Color(0xFFFFFFFF),
            //   boxShadow: [
            //     BoxShadow(
            //       blurRadius: 4.0,
            //       color: Color(0x40000000),
            //       offset: Offset(0, 4),
            //     ),
            //   ],
            // ),
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
