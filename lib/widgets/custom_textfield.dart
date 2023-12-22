import 'package:flutter/material.dart';

import '../font_style.dart';
import '../utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.iconUrl,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 14),
        child: Row(
          children: [
            SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  iconUrl,
                )),
            const AddHorizonTalGap(),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: smTExt,
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
