import 'package:flutter/material.dart';

import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/screens/sign_in_screen.dart';
import 'package:food_ordering_ui_clone/screens/verify_otp_screen.dart';
import 'package:food_ordering_ui_clone/utils.dart';
import 'package:food_ordering_ui_clone/widgets/custom_elevated_button.dart';

import '../widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  Text(
                    "create account".toUpperCase(),
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
                  CustomTextField(
                    controller: controller,
                    hintText: "Name",
                    iconUrl: 'assets/images/user-icon.png',
                  ),
                  const AddVerticalGap(),
                  CustomTextField(
                    controller: controller,
                    hintText: "Phone number",
                    iconUrl: 'assets/images/phone-icon.png',
                  ),
                  const AddVerticalGap(),
                  CustomTextField(
                    controller: controller,
                    hintText: "Email address",
                    iconUrl: 'assets/images/email-icon.png',
                  ),
                  const AddVerticalGap(),
                  CustomTextField(
                    controller: controller,
                    hintText: "Password",
                    iconUrl: 'assets/images/lock-icon.png',
                  ),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  CustomElevatedButton(
                      backgroundColor: kPrimaryColor,
                      labelText: "Sign Up",
                      onpress: () {
                        goToNextScreen(context, const VerifyOtpScreen());
                      }),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "already signed up?",
                        style: smTExt,
                      ),
                      TextButton(
                          onPressed: () {
                            goToNextScreen(context, const SignInScreen());
                          },
                          child: Text(
                            "login here",
                            style: smTExt,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
