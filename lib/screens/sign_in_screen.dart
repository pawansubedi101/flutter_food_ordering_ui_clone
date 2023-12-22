import 'package:flutter/material.dart';

import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/screens/home_screen.dart';
import 'package:food_ordering_ui_clone/screens/sign_up_screen.dart';

import 'package:food_ordering_ui_clone/utils.dart';
import 'package:food_ordering_ui_clone/widgets/custom_elevated_button.dart';

import '../widgets/custom_textfield.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo-filled.png'),
                  Text(
                    "welcome back".toUpperCase(),
                    style: h3Text.copyWith(color: kPrimaryColor),
                  ),
                  Text(
                    "We'll verify your OTP in next screen ",
                    style: defaultText,
                  ),
                  const AddVerticalGap(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.0),
                    child: Divider(
                      color: kPrimaryColor,
                    ),
                  ),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  CustomTextField(
                    controller: controller,
                    hintText: "+91 7200083726",
                    iconUrl: 'assets/images/phone-icon.png',
                  ),
                  const AddVerticalGap(),
                  CustomTextField(
                    controller: controller,
                    hintText: "*********",
                    iconUrl: 'assets/images/lock-icon.png',
                  ),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  CustomElevatedButton(
                      backgroundColor: kPrimaryColor,
                      labelText: "Login",
                      onpress: () {
                        replaceScreen(context, const HomeScreen());
                      }),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New to Khaika?",
                        style: smTExt,
                      ),
                      TextButton(
                          onPressed: () {
                            goToNextScreen(context, const SignUpScreen());
                          },
                          child: Text(
                            "Sign up here",
                            style: smTExt,
                          )),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: smTExt.copyWith(color: Colors.black),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
