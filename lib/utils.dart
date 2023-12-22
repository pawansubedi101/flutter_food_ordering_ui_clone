import 'package:flutter/material.dart';

replaceScreen(BuildContext context, Widget widget) {
  Future.delayed(const Duration(milliseconds: 1000), () {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  });
}

goToNextScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return widget;
    },
  ));
}

class AddVerticalGap extends StatelessWidget {
  const AddVerticalGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class AddHorizonTalGap extends StatelessWidget {
  const AddHorizonTalGap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 10,
    );
  }
}
