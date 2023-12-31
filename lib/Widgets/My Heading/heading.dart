import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Colors/colors.dart';

class Heading extends StatelessWidget {
  final String text;

  Color? color;
  Heading({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color ?? blackColor,
          fontSize: 22,
          fontWeight: FontWeight.w500),
    );
  }
}
