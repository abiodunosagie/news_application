import 'package:flutter/material.dart';

import '../constants/app_styles.dart';
import '../constants/size_config.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({
    super.key,
    required this.tabItems,
  });

  final List tabItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
