import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_styles.dart';
import '../constants/size_config.dart';
import '../util/my_network_image.dart';
import '../util/post_list.dart';


class BottomNews extends StatelessWidget {
  const BottomNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
          itemCount: myNetworkImages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 208,

              margin: const EdgeInsets.only(
                right: 20.0,
              ),
              padding: const EdgeInsets.all(
                9,
              ),
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(
                    kBorderRadius,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kDarkBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                    ),
                  ]),
              //list view items
              child: Row(children: [
                Container(
                  padding: const EdgeInsets.all(
                    27.0,
                  ),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          myNetworkImages[index].buildImage()),
                    ),
                  ),
                  child: SvgPicture.asset('assets/play_icon.svg'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          MyPostList.getItems()[index]['title'],
                          style: kPoppinsSemibold.copyWith(
                            fontSize:
                                SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/eye_icon.svg',
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            '40,999',
                            style: kPoppinsMedium.copyWith(
                              color: kGrey,
                              fontSize:
                                  SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            );
          }),
    );
  }
}
