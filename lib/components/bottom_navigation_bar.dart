import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_styles.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTabTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kWhite,
      items: [
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? SvgPicture.asset('assets/home_selected_icon.svg')
              : SvgPicture.asset('assets/home_unselected_icon.svg'),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
              ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
              : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
          label: "Details",
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 2
              ? SvgPicture.asset('assets/notification_selected_icon.svg')
              : SvgPicture.asset('assets/notification_unselected_icon.svg'),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? SvgPicture.asset('assets/profile_selected_icon.svg')
              : SvgPicture.asset('assets/profile_unselected_icon.svg'),
          label: "Profile",
        )
      ],
      currentIndex: selectedIndex,
      onTap: onTabTapped,
    );
  }
}
