import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: ListView(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/vectors/search.svg',
                                height: 25.0,
                                width: 25.0,
                              ),
                              SvgPicture.asset('assets/vectors/logo.svg',
                                  height: 33.0),
                              const Icon(Icons.more_vert),
                            ],
                          ),
                          const SizedBox(height: 24.0),
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFF42C83C),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: 128.0,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 19.0, vertical: 14.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'New Album',
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Happier Than Ever',
                                          maxLines: 2,
                                          style: TextStyle(
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          maxLines: 1,
                                          'Billie Eilish',
                                          style: TextStyle(
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: SvgPicture.asset(
                                      'assets/vectors/radial_fourth.svg'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 32.0,
                        child: Image.asset(
                          'assets/images/banner.png',
                          height: 162.0,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              TabBar(
                padding: const EdgeInsets.symmetric(
                    horizontal: 19.0, vertical: 20.0),
                unselectedLabelColor: const Color(0xFFBEBEBE),
                labelColor: const Color(0xFF000000),
                labelStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
                //For Selected tab
                unselectedLabelStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
                isScrollable: true,
                splashFactory: NoSplash.splashFactory,
                splashBorderRadius: BorderRadius.circular(16.0),
                indicator: const CustomTabIndicator(radius: 8.0),
                tabs: const [
                  Tab(text: 'News'),
                  Tab(text: 'Video'),
                  Tab(text: 'Artists'),
                  Tab(text: 'Podcast'),
                ],
              ),
              SizedBox(
                height: 235,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 194.0,
                              width: 147.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30.0)),
                                    child: Container(
                                      height: 185.0,
                                      width: 147.0,
                                      color: Colors.red,
                                      child: Image.asset(
                                        'assets/images/album.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 12,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25.0)),
                                        color: Color(0xFFE6E6E6),
                                      ),
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        'assets/vectors/play.svg',
                                        height: 14.0,
                                        width: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Bad Guy',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'Billie Eilish',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 10),
                      itemCount: 5,
                    ),
                    const Text('2'),
                    const Text('3'),
                    const Text('4'),
                  ],
                ),
              ),
              const SizedBox(height: 37.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Songs',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        'See More',
                        style: TextStyle(
                          color: Color(0xFF131313),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              ListView.separated(
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 29.0),
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () =>
                          Navigator.pushNamed(
                              context, MainNavigationRouteNames.musicScreen),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)),
                            color: Color(0xFFE6E6E6),
                          ),
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(
                            'assets/vectors/play.svg',
                            height: 15.0,
                            width: 15.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Dont Smile At Me',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Billie Eilish',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        '5:33',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 37.0),
                      SvgPicture.asset(
                        'assets/vectors/liked_on.svg',
                        height: 24.0,
                        width: 24.0,
                        color: const Color(0xFFB4B4B4),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 20.0),
              ),
            ],
          ),
        ),
      ),
      // body: ListView(
      //   children: [
      //     SizedBox(
      //       height: 235.0,
      //       child: ListView.separated(
      //         padding: const EdgeInsets.symmetric(horizontal: 28.0),
      //         scrollDirection: Axis.horizontal,
      //         itemBuilder: (BuildContext context, int index) {
      //           return Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               SizedBox(
      //                 height: 194.0,
      //                 width: 147.0,
      //                 child: Stack(
      //                   children: [
      //                     ClipRRect(
      //                       borderRadius:
      //                           const BorderRadius.all(Radius.circular(30.0)),
      //                       child: Container(
      //                         height: 185.0,
      //                         width: 147.0,
      //                         color: Colors.red,
      //                         child: Image.asset(
      //                           'assets/images/album.png',
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                     ),
      //                     Positioned(
      //                       bottom: 0,
      //                       right: 12,
      //                       child: Container(
      //                         decoration: const BoxDecoration(
      //                           borderRadius:
      //                               BorderRadius.all(Radius.circular(25.0)),
      //                           color: Color(0xFFE6E6E6),
      //                         ),
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: SvgPicture.asset(
      //                           'assets/vectors/play.svg',
      //                           height: 14.0,
      //                           width: 14.0,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const Text(
      //                 'Bad Guy',
      //                 style: TextStyle(
      //                   color: Color(0xFF000000),
      //                   fontSize: 16.0,
      //                   fontWeight: FontWeight.w700,
      //                 ),
      //               ),
      //               const Text(
      //                 'Billie Eilish',
      //                 style: TextStyle(
      //                   color: Color(0xFF000000),
      //                   fontSize: 14.0,
      //                   fontWeight: FontWeight.w400,
      //                 ),
      //               ),
      //             ],
      //           );
      //         },
      //         separatorBuilder: (BuildContext context, int index) =>
      //             const SizedBox(width: 10),
      //         itemCount: 5,
      //       ),
      //     ),
      //     const SizedBox(height: 37.0),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 29.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           const Text(
      //             'Songs',
      //             style: TextStyle(
      //               color: Color(0xFF222222),
      //               fontSize: 20.0,
      //               fontWeight: FontWeight.w700,
      //             ),
      //           ),
      //           GestureDetector(
      //             child: const Text(
      //               'See More',
      //               style: TextStyle(
      //                 color: Color(0xFF131313),
      //                 fontSize: 12.0,
      //                 fontWeight: FontWeight.w400,
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 15.0),
      //     ListView.separated(
      //       itemCount: 5,
      //       padding: const EdgeInsets.symmetric(horizontal: 29.0),
      //       physics: const ScrollPhysics(),
      //       shrinkWrap: true,
      //       itemBuilder: (BuildContext context, int index) {
      //         return Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Container(
      //               decoration: const BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
      //                 color: Color(0xFFE6E6E6),
      //               ),
      //               padding: const EdgeInsets.all(15.0),
      //               child: SvgPicture.asset(
      //                 'assets/vectors/play.svg',
      //                 height: 15.0,
      //                 width: 15.0,
      //               ),
      //             ),
      //             const SizedBox(width: 16.0),
      //             Expanded(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: const [
      //                   Text(
      //                     'Dont Smile At Me',
      //                     overflow: TextOverflow.ellipsis,
      //                     maxLines: 1,
      //                     style: TextStyle(
      //                       color: Color(0xFF000000),
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.w700,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Billie Eilish',
      //                     overflow: TextOverflow.ellipsis,
      //                     maxLines: 1,
      //                     style: TextStyle(
      //                       color: Color(0xFF000000),
      //                       fontSize: 12.0,
      //                       fontWeight: FontWeight.w400,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             const SizedBox(width: 8.0),
      //             const Text(
      //               '5:33',
      //               style: TextStyle(
      //                   color: Color(0xFF000000),
      //                   fontSize: 15.0,
      //                   fontWeight: FontWeight.w400),
      //             ),
      //             const SizedBox(width: 37.0),
      //             SvgPicture.asset(
      //               'assets/vectors/liked_on.svg',
      //               height: 24.0,
      //               width: 24.0,
      //               color: const Color(0xFFB4B4B4),
      //             ),
      //           ],
      //         );
      //       },
      //       separatorBuilder: (BuildContext context, int index) =>
      //           const SizedBox(height: 20.0),
      //     ),
      //   ],
      // ),
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
    final double yAxisPos = offset.dy + configuration.size!.height - 8.0;
    paint.color = const Color(0xFF42C83C);

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 3,
        height: 4,
      ),
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}
