import 'package:flutter/material.dart';

import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/screens/otp_success_page.dart';
import 'package:food_ordering_ui_clone/utils.dart';
import 'package:food_ordering_ui_clone/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "verify otp".toUpperCase(),
                    style: h3Text.copyWith(color: kPrimaryColor),
                  ),
                  Text(
                    "Please enter the 4-digit code we sent to\nyour phone number",
                    style: defaultText,
                    textAlign: TextAlign.center,
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
                  const SizedBox(
                    height: 50,
                    child: Pinput(
                      length: 4,
                      showCursor: true,
                      toolbarEnabled: true,
                    ),
                  ),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  CustomElevatedButton(
                      backgroundColor: kPrimaryColor,
                      labelText: "Verify",
                      onpress: () {
                        goToNextScreen(context, const OptSuccessScreen());
                      }),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  const AddVerticalGap(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tap here to",
                        style: smTExt,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resend",
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
