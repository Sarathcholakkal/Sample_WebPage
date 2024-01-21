import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../components/header.dart';

class ContactPage extends StatelessWidget {
  static const id = '/contact';
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width * .015,
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
            SizedBox(
              child: Container(
                child: Text(
                    'lxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
