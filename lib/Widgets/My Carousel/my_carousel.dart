import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  int? index;
  List<dynamic> images;
  CarouselController? controller;
  dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  MyCarousel(
      {super.key,
      required this.images,
      required index,
      required controller,
      this.onPageChanged});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: widget.controller,
      items: widget.images
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  e.toString(),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ))
          .toList(),
      options: CarouselOptions(
        aspectRatio: 16 / 6,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: widget.onPageChanged,
      ),
    );
  }
}
