import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:laundryday/Resources/Colors/colors.dart';

class MyCarouselIndicator extends StatelessWidget {
  int dotCount;
  int position;
  void Function(int)? onTap;

  MyCarouselIndicator(
      {super.key, this.onTap, required this.dotCount, required this.position});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        child: DotsIndicator(
          dotsCount: dotCount,
          position: position,
          decorator: const DotsDecorator(
            color: primaryColor,
            activeColor: Colors.white,
          ),
          onTap: onTap,
        ));
  }
}
