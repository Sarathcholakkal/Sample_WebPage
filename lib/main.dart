import 'package:devbee/UI/screens/about_page.dart';

import './UI/screens/contact_page.dart';

import './UI/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    routes: {
      "/home": (context) => HomePage(),
      "/contact": (context) => ContactPage(),
      "/about": (context) => AboutPage(),
    },
  ));
}
