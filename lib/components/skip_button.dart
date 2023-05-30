import 'package:flutter/material.dart';

import '../constants/app_styles.dart';



class Skipbutton extends StatelessWidget {
  const Skipbutton({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _pageController.jumpToPage(1);
      },
      child: const Text(
        'Skip',
        style: kSkipButton,
      ),
    );
  }
}
