import 'package:flutter/material.dart';

import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/utils.dart';
import 'package:food_ordering_ui_clone/widgets/custom_elevated_button.dart';

class OptFailScreen extends StatelessWidget {
  const OptFailScreen({super.key});

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
                    child: Image.asset('assets/images/broken glass.png')),
                const AddVerticalGap(),
                const AddVerticalGap(),
                const AddVerticalGap(),
                Text(
                  "Oh Snap!",
                  style: h4Text.copyWith(color: kErrorColor),
                ),
                const AddVerticalGap(),
                Text(
                  "Looks like something went wrong.\nPlease start over or contact us.",
                  textAlign: TextAlign.center,
                  style: xsTExt.copyWith(color: kErrorColor),
                ),
                const AddVerticalGap(),
                const AddVerticalGap(),
                CustomElevatedButton(
                    backgroundColor: kErrorColor,
                    labelText: "Okay",
                    onpress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
