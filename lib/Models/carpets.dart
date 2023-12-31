import 'package:flutter/material.dart';

import 'carpet_categories.dart';

class Carpets {
  String? name;
  String? image;
  String? category;
  bool isTapped;

  Color color;

  List<CarpetCategories>? subCatgories;

  Carpets(
      {this.name,
      this.image,
      this.category,
      this.subCatgories,
      this.isTapped = false,
      this.color = Colors.red});
}
