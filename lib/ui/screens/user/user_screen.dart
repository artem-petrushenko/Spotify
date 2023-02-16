import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/user/user_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(66.0),
                bottomRight: Radius.circular(66.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0A000000),
                  offset: Offset(0.0, 20.0),
                  blurRadius: 50.0,
                  // spreadRadius: 50.0
                )
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    child: SvgPicture.asset('assets/vectors/radial_third.svg')),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 39.0, bottom: 19.0, top: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => context.read<UserViewModel>().openUserProfile(
                                  context),
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
                            const Text(
                              'Profile',
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
                            )
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          child: Image.asset(
                            'assets/images/artist_mini.png',
                            height: 93.0,
                            width: 93.0,
                          ),
                        ),
                        const SizedBox(height: 11.0),
                        const Text(
                          'Soroushnorozyui@gmail.com',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Soroushnrz',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 9.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  '778',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Followes',
                                  style: TextStyle(
                                    color: Color(0xFF585858),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '778',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Followes',
                                  style: TextStyle(
                                    color: Color(0xFF585858),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 19.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.0),
            child: Text(
              'PUBLIC PLAYLISTS',
              style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 17.0),
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14.0)),
                    child: Image.asset(
                      'assets/images/album_mini.png',
                      height: 56.0,
                      width: 56.0,
                      fit: BoxFit.cover,
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
                  const Icon(
                    Icons.more_horiz,
                    color: Color(0xFF000000),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 10.0),
          ),
        ],
      ),
    );
  }
}
