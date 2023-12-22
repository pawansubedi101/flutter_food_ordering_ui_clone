import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.90,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
