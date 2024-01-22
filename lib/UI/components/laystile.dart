import 'package:devbee/constant/constant.dart';
import 'package:flutter/material.dart';

class LayTile extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String image;
  const LayTile(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 28),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.01,
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: borderBlue,
              width: 3,
              strokeAlign: BorderSide.strokeAlignOutside)),
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                mainTitle,
                style: TextStyle(
                  color: white,
                  fontSize: MediaQuery.of(context).textScaler.scale(30),
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: white,
                  fontSize: MediaQuery.of(context).textScaler.scale(20),
                  letterSpacing: 2,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .3,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor, elevation: 0),
                      child: Text(
                        buttonLabels[0],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: white,
                            width: 2,
                          ),
                          foregroundColor: white,
                        ),
                        onPressed: () {},
                        child: Text(buttonLabels[1]))
                  ],
                ),
              ),
            ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              image,
              alignment: Alignment.centerRight,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
