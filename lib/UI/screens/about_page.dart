import 'package:devbee/UI/components/laystile.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../components/header.dart';

class AboutPage extends StatelessWidget {
  static const id = '/about';
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width * .01,
          vertical: MediaQuery.of(context).size.height * .035,
        ),
        decoration: BoxDecoration(
          border: Border.all(
              color: borderBlue,
              width: 7,
              strokeAlign: BorderSide.strokeAlignOutside),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(currentPageId: id),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width * .78,
              height: MediaQuery.of(context).size.height * .9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LayTile(
                        mainTitle: flavours[0],
                        subTitle: flavoursTitle[0],
                        image: laysImages[0]),
                    LayTile(
                        mainTitle: flavours[1],
                        subTitle: flavoursTitle[1],
                        image: laysImages[1]),
                    // LayTile(
                    //     mainTitle: flavours[0],
                    //     subTitle: flavoursTitle[0],
                    //     image: laysImages[0]),
                    // LayTile(
                    //     mainTitle: flavours[1],
                    //     subTitle: flavoursTitle[1],
                    //     image: laysImages[1])
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
