import 'package:flutter/material.dart';

import '../../components/dot_indicator.dart';
import '../../components/next_indicator.dart';
import '../../components/onboard_images.dart';
import '../../components/onboarding_content.dart';
import '../../components/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {}); // Rebuild the UI on page change
                  },
                  itemCount: demoData.length,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return Center(
                      child: OnboardingContent(
                        image: demoData[index].image,
                        title: demoData[index].title,
                      ),
                    );
                  },
                ),
              ),
              //dot indicator section
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: DotIndicator(
                        isActive: index == _pageController.page?.round(),
                      ),
                    ),
                  ),
                ],
              ),
              //skip and next section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Skipbutton(pageController: _pageController),
                    const Spacer(),
                    Nextbutton(
                      pageController: _pageController,
                      pageIndex: _pageController.page?.round() ?? 0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
