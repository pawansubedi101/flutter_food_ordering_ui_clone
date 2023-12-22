import 'package:flutter/material.dart';

import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/screens/otp_fail_screen.dart';
import 'package:food_ordering_ui_clone/utils.dart';
import 'package:food_ordering_ui_clone/widgets/custom_elevated_button.dart';

class OptSuccessScreen extends StatelessWidget {
  const OptSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100,
                    width: 200,
                    child: Image.asset('assets/images/cheers.png')),
                const AddVerticalGap(),
                const AddVerticalGap(),
                const AddVerticalGap(),
                Text(
                  "Bindaaz!",
                  style: h4Text.copyWith(color: kPrimaryColor),
                ),
                const AddVerticalGap(),
                Text(
                  "You have successfully verified your\naccount details.",
                  textAlign: TextAlign.center,
                  style: xsTExt,
                ),
                const AddVerticalGap(),
                const AddVerticalGap(),
                CustomElevatedButton(
                    backgroundColor: kPrimaryColor,
                    labelText: "Okay",
                    onpress: () {
                      goToNextScreen(context, const OptFailScreen());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
