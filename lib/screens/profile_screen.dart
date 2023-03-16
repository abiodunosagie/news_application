import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application/constants/app_styles.dart';
import 'package:news_application/util/post_list.dart';
import 'package:news_application/util/my_network_image.dart';

import '../constants/size_config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: klighterWhite,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/home_selected_icon.svg')
                : SvgPicture.asset(
                    'assets/home_unselected_icon.svg',
                  ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                : SvgPicture.asset(
                    'assets/bookmark_unselected_icon.svg',
                  ),
            label: "Details",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/notification_selected_icon.svg')
                : SvgPicture.asset(
                    'assets/notification_unselected_icon.svg',
                  ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/profile_selected_icon.svg')
                : SvgPicture.asset(
                    'assets/profile_unselected_icon.svg',
                  ),
            label: "Profile",
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //this row holds the username and photo making them one in one direction
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          //user avatar section
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        //spacer
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        //user name inside a column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Abiodun Osagie O.',
                              style: kPoppinsBold.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            Text(
                              'App Developer',
                              style: kPoppinsRegular.copyWith(
                                color: kDarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // user 'following' button here in the general row created
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 42,
                          maxWidth: SizeConfig.blockSizeHorizontal! * 25,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius,
                          ),
                          color: kBlue,
                        ),
                        child: Center(
                            child: Text(
                          'Contact',
                          style: kPoppinsMedium.copyWith(
                            color: kWhite,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Text(
                  'every piee of chocolate I ever ate is getting back at me..'
                  ' desserts are very revengeful',
                  style: kPoppinsMedium.copyWith(
                    color: kGrey,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                //Statistics section in a row and within is an expanded widget too.
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 3,
                      vertical: SizeConfig.blockSizeVertical! * 3.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    color: kDarkBlue,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '915',
                                style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                              Text(
                                'Posts',
                                style: kPoppinsMedium.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: SizeConfig.blockSizeVertical! * 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            color: kLighterBlue,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '980K',
                                style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                              Text(
                                'Followers',
                                style: kPoppinsMedium.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: SizeConfig.blockSizeVertical! * 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            color: kLighterBlue,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                '760',
                                style: kPoppinsBold.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                ),
                              ),
                              Text(
                                'Following',
                                style: kPoppinsMedium.copyWith(
                                  color: kWhite,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                //A short guide to more details. But i didnt link it to any page.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Abiodun\'s Post',
                      style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'View All',
                      style: kPoppinsMedium.copyWith(
                        color: kBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                //A vertical listview here
                SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: MyPostList.getItems().length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          bottom: SizeConfig.blockSizeVertical! * 2,
                        ),
                        child: Row(children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(
                              5,
                            ),
                            decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  spreadRadius: 0,
                                  offset: const Offset(
                                    0,
                                    3,
                                  ),
                                  color: kDarkBlue.withOpacity(
                                    0.051,
                                  ),
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius,
                              ),
                              child: Image.network(
                                MyPostList.getItems()[index]['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyPostList.getItems()[index]['category'],
                                style: kPoppinsRegular.copyWith(
                                  color: kDarkBlue,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1,
                              ),
                              Text(
                                MyPostList.getItems()[index]['title'],
                                style: kPoppinsSemibold.copyWith(
                                  color: kDarkBlue,
                                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical! * 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    //Date Row
                                    children: [
                                      SvgPicture.asset(
                                        'assets/calendar_icon.svg',
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            1.5,
                                      ),
                                      Text(
                                        '17, March',
                                        style: kPoppinsRegular.copyWith(
                                          color: kGrey,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      )
                                    ],
                                  ),
                                  //Time Row
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/time_icon.svg',
                                      ),
                                      SizedBox(
                                        width: SizeConfig.blockSizeHorizontal! *
                                            1.5,
                                      ),
                                      Text(
                                        '01:18PM',
                                        style: kPoppinsRegular.copyWith(
                                          color: kGrey,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ))
                        ]),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeVertical! * 2.5,
                ),
                //Another view all section
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular locations from Abiodun',
                      style: kPoppinsBold.copyWith(
                        color: kDarkBlue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                SizedBox(
                  height: 143,
                  child: ListView.builder(
                      itemCount: myNetworkImages.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 143,
                          width: 248,
                          margin: EdgeInsets.only(
                            right: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              kBorderRadius,
                            ),
                            child: Image.network(
                              myNetworkImages[index].buildImage(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
