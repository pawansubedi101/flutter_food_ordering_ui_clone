import 'package:flutter/material.dart';
import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/screens/introduction_screen.dart';
import 'package:food_ordering_ui_clone/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    replaceScreen(context, const IntroScreen());
    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(child: Image.asset('assets/images/logo.png')),
    ));
  }
}
