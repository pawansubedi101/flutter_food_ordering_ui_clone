import 'package:flutter/material.dart';
import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/screens/sign_in_screen.dart';
import 'package:food_ordering_ui_clone/screens/sign_up_screen.dart';
import 'package:food_ordering_ui_clone/utils.dart';

import '../widgets/custom_elevated_button.dart';
import '../widgets/intro_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController controller = PageController(initialPage: 0);

  final List<Widget> _pages = const [
    IntroWidget(
      imagePath: 'assets/images/Group 4.png',
      labelText: 'celebrating homeworkers',
      descriptionText:
          'When you place an order on khaika,\nyou are directly empowering the\nwomen of our country.',
    ),
    IntroWidget(
        imagePath: 'assets/images/Group 5.png',
        labelText: "healthy & hygienic",
        descriptionText:
            "We've got amazing desi food from\n south to north, east to west! Prepared\nwith love."),
    IntroWidget(
        imagePath: 'assets/images/Group 6.png',
        labelText: "delivered on time",
        descriptionText:
            "Our growing list of khaika heroes\ndeliver your food warm, when you want\nit, where you want it."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: _pages,
              ),
            ),
            CustomElevatedButton(
              onpress: () {
                controller.page == _pages.length - 1
                    ? goToNextScreen(context, const SignUpScreen())
                    : controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
              },
              labelText: "Get Started",
              backgroundColor: kPrimaryColor,
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 50,
          width: double.infinity,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already signed up?",
                style: xsTExt,
              ),
              TextButton(
                  onPressed: () {
                    goToNextScreen(context, const SignInScreen());
                  },
                  child: Text(
                    "login here",
                    style: xsTExt,
                  ))
            ],
          ))),
    );
  }
}
