import 'package:flutter/material.dart';

import '../font_style.dart';
import '../utils.dart';

class ProductListtile extends StatelessWidget {
  const ProductListtile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
              height: 100,
              width: 100,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.asset(
                "assets/images/image4.png",
                fit: BoxFit.cover,
              )),
          const AddHorizonTalGap(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mariam's homefood",
                style: defaultText,
              ),
              const AddVerticalGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "★ 5.0",
                    style: defaultText.copyWith(color: Colors.amber),
                  ),
                  const AddHorizonTalGap(),
                  Chip(
                      backgroundColor: Colors.red,
                      labelStyle: xsTExt.copyWith(color: Colors.white),
                      label: const Text("VEG"))
                ],
              ),
              const AddVerticalGap(),
              Container(
                height: 1.3,
                width: 150,
                color: Colors.grey,
              ),
              const AddVerticalGap(),
              Row(
                children: [
                  const Icon(
                    Icons.alarm,
                    size: 14,
                  ),
                  const AddHorizonTalGap(),
                  Text(
                    "15 min",
                    style: xsTExt,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
