import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_application/constants/app_styles.dart';
import 'package:news_application/constants/size_config.dart';
import 'package:news_application/screens/profile_screen.dart';

import '../util/fullscreen_slider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 50,
                child: Stack(
                  children: [
                    //image slider
                    const FullScreenSlider(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              42,
                            ),
                            topRight: Radius.circular(
                              42,
                            ),
                          ),
                          color: klighterWhite,
                        ),
                      ),
                    ),
                    // top buttons
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 60,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      kBorderRadius,
                                    ),
                                    border: Border.all(
                                      color: kWhite,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(
                                    12,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: SvgPicture.asset(
                                        'assets/arrow_back_icon.svg'),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileScreen()));
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      kBorderRadius,
                                    ),
                                    border: Border.all(
                                      color: kWhite,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(
                                    12,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/bookmark_white_icon.svg',
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                ),
                child: Text(
                  'Unravel mysteries \n of the Maldives',
                  style: kPoppinsBold.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 7,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                height: 54,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius,
                  ),
                  border: Border.all(
                    color: kBorderColor,
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: kBlue,
                        backgroundImage: NetworkImage(
                            'https://cdn3d.iconscout.com/3d/premium/thumb/woman-avatar-6299541-5187873.png'),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      Text(
                        'Abiodun Osagie',
                        style: kPoppinsSemibold.copyWith(
                          color: kGrey,
                        ),
                      ),
                      Text(
                        '| ',
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                        ),
                      ),
                      Text(
                        'March 17 |',
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                        ),
                      ),
                      Text(
                        '8 min read',
                        style: kPoppinsRegular.copyWith(
                          color: kGrey,
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Text(
                  'Maldives, in full Republic of Maldives, also called Maldive Islands, independent island country in the north-central Indian Ocean. \n It consists of a chain of about 1,200 small coral islands and sandbanks (some 200 of which are inhabited), grouped in clusters, or atolls.MaldivesMaldivesThe islands extend more than 510 miles (820 km) from north to south and 80 miles (130 km) from east to west. \n The northernmost atoll is about 370 miles (600 km) south-southwest of the Indian mainland, and the central area, including the capital island of Male (Male’), is about 400 miles (645 km) southwest of Sri Lanka.LanPhysical features of MaldivesPhysical features of MaldivesThe Maldive Islands are a series of coral atolls built up from the crowns of a submerged ancient volcanic mountain range. \n \n All the islands are low-lying, none rising to more than 6 feet (1.8 metres) above sea level. Barrier reefs protect the islands from the destructive effects of monsoons. The rainy season, from May to August, is brought by the southwest monsoon; from December to March the northeast monsoon brings dry and mild winds.\n\n The average annual temperature varies from 76 to 86 °F (24 to 30 °C). Rainfall averages about 84 inches (2,130 mm) per year. The atolls have sandy beaches, lagoons, and a luxuriant growth of coconut palms, together with breadfruit trees and tropical bushes. Fish abound in the reefs, lagoons, and seas adjoining the islands; sea turtles are caught for food and for their oil, a traditional medicine.',
                  style: kPoppinsMedium.copyWith(
                    color: kDarkBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              )
            ]),
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1586495985096-787fb4a54ac0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1586861642026-74a6da22a3cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
  'https://images.unsplash.com/photo-1574226780565-388f10f8121e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'
];
