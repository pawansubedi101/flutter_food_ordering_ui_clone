import 'package:flutter/material.dart';

import '../constants.dart';
import '../font_style.dart';
import '../utils.dart';
import '../widgets/product_listtile.dart';
import '../widgets/slider_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 25,
                        ),
                        const AddHorizonTalGap(),
                        Text(
                          "Avinashi Road",
                          style: h4Text.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      "no.9, chennimalai, layout,\ncbe15...",
                      style: xsTExt.copyWith(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      foregroundColor: kPrimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/search.png'),
                      ),
                    ),
                    const AddHorizonTalGap(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: kPrimaryColor,
                      radius: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/filter.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const AddVerticalGap(),
        SizedBox(
          height: 130,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SliderImage(
                imageUrl: "assets/images/image1.png",
              ),
              SliderImage(
                imageUrl: "assets/images/image2.png",
              ),
              SliderImage(
                imageUrl: "assets/images/image3.png",
              )
            ],
          ),
        ),
        const AddVerticalGap(),
        SizedBox(
          height: 40,
          width: double.infinity,
          // color: kPrimaryColor,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 120,
                child: Chip(
                    backgroundColor: Colors.grey.shade100,
                    label: Text(
                      "Snacks",
                      style: smTExt,
                    )),
              ),
              SizedBox(
                width: 120,
                child: Chip(
                    backgroundColor: Colors.grey.shade100,
                    label: Text(
                      "Khaika meals",
                      style: smTExt,
                    )),
              ),
              SizedBox(
                width: 120,
                child: Chip(
                    backgroundColor: Colors.grey.shade100,
                    label: Text(
                      "Specials",
                      style: smTExt,
                    )),
              ),
              SizedBox(
                width: 120,
                child: Chip(
                    backgroundColor: Colors.grey.shade100,
                    label: Text(
                      "Specials",
                      style: smTExt,
                    )),
              ),
            ],
          ),
        ),
        const AddVerticalGap(),
        Text(
          "Showing you 18 kitchen nearby",
          style: xsTExt,
          textAlign: TextAlign.center,
        ),
        const AddVerticalGap(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: const [
                ProductListtile(),
                ProductListtile(),
                ProductListtile(),
                ProductListtile(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
