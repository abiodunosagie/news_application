import 'package:flutter/material.dart';

import '../constants/app_styles.dart';
import '../constants/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
