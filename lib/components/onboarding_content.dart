import 'package:flutter/material.dart';


import '../constants/app_styles.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 320,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 92.12,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: kOnboardingText,
        ),
        const Spacer(),
      ],
    );
  }
}
