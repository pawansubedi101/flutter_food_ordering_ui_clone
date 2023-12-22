import 'package:flutter/material.dart';

import '../constants.dart';
import '../font_style.dart';
import '../utils.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
    required this.imagePath,
    required this.labelText,
    required this.descriptionText,
  }) : super(key: key);

  final String imagePath;
  final String labelText;
  final String descriptionText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const AddVerticalGap(),
          const AddVerticalGap(),
          const AddVerticalGap(),
          Text(
            labelText.toUpperCase(),
            style: h4Text.copyWith(color: kPrimaryColor),
          ),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: xsTExt,
          ),
        ],
      ),
    );
  }
}
