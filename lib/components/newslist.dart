import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/app_styles.dart';
import '../constants/size_config.dart';
import '../screens/details_page.dart';
import '../util/post_list.dart';

class Newslist extends StatelessWidget {
  const Newslist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const DetailsScreen();
          }),
        );
      },
      child: SizedBox(
        height: 304,
        child: ListView.builder(
            itemCount: MyPostList.getItems().length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                  right: 10.0,
                ),
                height: 304,
                width: 255,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kDarkBlue.withOpacity(0.051),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        kBorderRadius,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage(MyPostList.getItems()[index]['image']),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        MyPostList.getItems()[index]['title'],
                        style: kPoppinsBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //quick info
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              const Expanded(
                                child: CircleAvatar(
                                  radius: 19,
                                  backgroundColor: kLightBlue,
                                  backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1630208232589-e42b29428b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZSUyMHBob3RvfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=600&q=60'),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Abiodun Osagie Olise',
                                    style: kPoppinsSemibold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  Text(
                                    'Mar 17, 2023',
                                    style: kPoppinsRegular.copyWith(
                                      color: kGrey,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //share button
                      Container(
                        height: 38,
                        width: 38,
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius,
                          ),
                          color: klighterWhite,
                        ),
                        child: SvgPicture.asset(
                          'assets/share_icon.svg',
                        ),
                      )
                    ],
                  ),
                ]),
              );
            }),
      ),
    );
  }
}
