import 'package:devbee/constant/constant.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final String currentPageId;
  const Header({super.key, required this.currentPageId});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    widget.currentPageId;
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      color: Colors.transparent,
      margin: EdgeInsetsDirectional.symmetric(
          horizontal: MediaQuery.of(context).size.width * .02,
          vertical: MediaQuery.of(context).size.height * .02),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          lays,
          style: TextStyle(
              fontSize: MediaQuery.of(context).textScaler.scale(43),
              color: Colors.white),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * .05,
          child: Row(
            children: [
              //!=================================================child 1
              widget.currentPageId == "/home"
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/home");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor, elevation: 0),
                      child: Text(
                        navLabels[0],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/home");
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: white, width: 2),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        navLabels[0],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
              const SizedBox(
                width: 20,
              ),
              //!=========================================================================child 2
              widget.currentPageId == "/about"
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/about");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor, elevation: 0),
                      child: Text(
                        navLabels[1],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/about");
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: white, width: 2),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        navLabels[1],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
              const SizedBox(
                width: 20,
              ),
              //!========================================================child 3
              widget.currentPageId == "/contact"
                  ? ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/contact");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor, elevation: 0),
                      child: Text(
                        navLabels[2],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/contact");
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: white, width: 2),
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        navLabels[2],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
            ],
          ),
        )
      ]),
    );
  }
}
