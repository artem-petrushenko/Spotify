import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';
import 'package:spotify_client/ui/screens/liked/liked_model.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(69.0),
                  bottomRight: Radius.circular(69.0),
                ),
                child: Image.asset(
                  'assets/images/artist.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 39.0, top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(MainNavigationRouteNames.albumScreen),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                            color: Color(0x21000000),
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/vectors/arrow_left.svg',
                              color: const Color(0xFFF0F0F0),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            context.read<LikedViewModel>().logout(context),
                        child: const Icon(
                          Icons.more_vert,
                          color: Color(0xFFF0F0F0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 63.0),
            child: Column(
              children: const [
                Text(
                  'Billie Eilish',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  '2 album , 67 track',
                  style: TextStyle(
                    color: Color(0xFF393939),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF838383),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.0),
            child: Text(
              'Album',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 17.0),
          SizedBox(
            height: 185.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              padding: const EdgeInsets.symmetric(horizontal: 29.0),
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 135.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                        child: Image.asset(
                          'assets/images/album.png',
                          height: 135.0,
                          width: 135.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 18.0),
                      const Text(
                        'Happier Than Ever',
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 16,
              ),
            ),
          ),
          const SizedBox(height: 26.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Songs',
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 16.0,
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
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      color: Color(0xFFE6E6E6),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      'assets/vectors/play.svg',
                      height: 15.0,
                      width: 15.0,
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
                    'assets/vectors/liked_off.svg',
                    height: 24.0,
                    width: 24.0,
                    color: const Color(0xFFC8C8C8),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 20.0),
          ),
        ],
      ),
    );
  }
}
