import 'package:flutter/material.dart';
import 'package:news_application/constants/app_styles.dart';
import 'package:news_application/constants/size_config.dart';
import 'package:news_application/screens/profile_screen.dart';

import '../components/bottom_scroll_items.dart';
import '../components/header.dart';
import '../components/newslist.dart';
import '../components/search_bar.dart';
import '../components/tab_bar.dart';

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
                const Header()
              ],
            ),
            //Searchfield section
            const SizedBox(
              height: 30,
            ),
            const Searchbar(),
            const SizedBox(
              height: 15,
            ),
            //tapbar section
            Tabbar(tabItems: tabItems),
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
            const Newslist(),
            const SizedBox(
              height: 30,
            ),
            const Spacer(),
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
            const BottomNews()
          ],
        ),
      ),
    );
  }
}
