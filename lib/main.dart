import 'package:edunourish/parent/bus_screen.dart';
import 'package:edunourish/parent/my_child_screen.dart';
import 'package:edunourish/parent/payment_screen.dart';
import 'package:edunourish/parent/settings_screen.dart';
import 'package:edunourish/parent_home.dart';
import 'package:edunourish/parent/parent_profile.dart';
import 'package:flutter/material.dart';

import 'intro_Screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
