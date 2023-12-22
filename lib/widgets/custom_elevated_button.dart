import 'package:flutter/material.dart';

import '../font_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.backgroundColor,
    required this.labelText,
    required this.onpress,
  }) : super(key: key);

  final Color backgroundColor;
  final String labelText;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: onpress,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Text(
            labelText,
            style: smTExt,
          ),
        ));
  }
}
