import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Colors/colors.dart';

class MyButton extends StatelessWidget {
  final String? name;
  final void Function()? onPressed;
  const MyButton({super.key, required this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            name!,
            style: GoogleFonts.poppins(
              color: const Color(0xFFFBFBFB),
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
