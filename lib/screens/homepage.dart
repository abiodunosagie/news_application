import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_application/constants/app_styles.dart';
import 'package:news_application/constants/size_config.dart';
import 'package:news_application/screens/details_page.dart';
import 'package:news_application/screens/profile_screen.dart';
import 'package:news_application/util/post_list.dart';

import '../util/my_network_image.dart';

//Destination list
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List tabItems = [
    'Tokyo',
    'Maldives',
    'Lagos',
    'Abuja',
    'Benin',
    'New York',
    'Paris',
    'Bora Bora',
    'Maui',
    'Tahiti',
    'Rome',
    'London, England',
    'Turks & Caicos',
    'Phuket',
    'Barcelona',
    'Glacier National Park'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLightWhite,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15,
          ),
          children: [
            Row(
              children: [
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    color: kLightBlue,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Friday, 17 March',
                      style: kPoppinsBold.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                )
              ],
            ),
            //Searchfield section
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kWhite,
                  boxShadow: [
                    BoxShadow(
                      color: kDarkBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                    ),
                  ]),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      hintText: 'Search for article...',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/search_icon.svg',
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            //tapbar section
            SizedBox(
              height: 14,
              child: ListView.builder(
                itemCount: tabItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  String items = tabItems[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      items,
                      style: kPoppinsMedium.copyWith(
                        color: kGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Top News',
                  style: kPoppinsBold.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                Text(
                  'View All',
                  style: kPoppinsBold.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //Horizontal listview scroll
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DetailsScreen();
                  }),
                );
              },
              child: SizedBox(
                height: 304,
                child: ListView.builder(
                    itemCount: MyPostList.getItems().length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                          right: 10.0,
                        ),
                        height: 304,
                        width: 255,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            color: kWhite,
                            boxShadow: [
                              BoxShadow(
                                color: kDarkBlue.withOpacity(0.051),
                                offset: const Offset(0.0, 3.0),
                                blurRadius: 24.0,
                                spreadRadius: 0.0,
                              ),
                            ]),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            height: 164,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    MyPostList.getItems()[index]['image']),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                MyPostList.getItems()[index]['title'],
                                style: kPoppinsBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //quick info
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 19,
                                      backgroundColor: kLightBlue,
                                      backgroundImage: NetworkImage(
                                          'https://images.unsplash.com/photo-1630208232589-e42b29428b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZSUyMHBob3RvfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Abiodun Osagie Olise',
                                          style: kPoppinsSemibold.copyWith(
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                        Text(
                                          'Mar 17, 2023',
                                          style: kPoppinsRegular.copyWith(
                                            color: kGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //share button
                              Container(
                                height: 38,
                                width: 38,
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    kBorderRadius,
                                  ),
                                  color: klighterWhite,
                                ),
                                child: SvgPicture.asset(
                                  'assets/share_icon.svg',
                                ),
                              )
                            ],
                          ),
                        ]),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Short for you',
                  style: kPoppinsBold.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                  child: Text(
                    'View All',
                    style: kPoppinsBold.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 88,
              child: ListView.builder(
                  itemCount: myNetworkImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 88,
                      width: 208,

                      margin: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      padding: const EdgeInsets.all(
                        9,
                      ),
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(
                            kBorderRadius,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: kDarkBlue.withOpacity(0.051),
                              offset: const Offset(0.0, 3.0),
                              blurRadius: 24.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      //list view items
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(
                            27.0,
                          ),
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  myNetworkImages[index].buildImage()),
                            ),
                          ),
                          child: SvgPicture.asset('assets/play_icon.svg'),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                MyPostList.getItems()[index]['title'],
                                style: kPoppinsSemibold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/eye_icon.svg',
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  Text(
                                    '40,999',
                                    style: kPoppinsMedium.copyWith(
                                      color: kGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
