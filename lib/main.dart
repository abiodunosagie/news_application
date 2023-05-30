import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_application/screens/onboardingScreen/onboarding.dart';
import 'components/bottom_navigation_bar.dart';
import 'constants/app_styles.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLightWhite,
        body: const OnboardingScreen(),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTabTapped: _onItemTapped,
        ),
      ),
    );
  }
}
