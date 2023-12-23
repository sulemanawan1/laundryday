import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Resources/Colors/colors.dart';

class MyButton extends StatelessWidget {
  final OutlinedBorder? outlinedBorder;
  final double? height;
  final double? width;
  final bool loading;
  final double? elevation;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final double? border;
  final String name;
  final Color? color;
  final FontStyle? fontStyle;
  final Color? textColor;
  final int? maxLines;
  final void Function()? onPressed;

  const MyButton(
      {super.key,
      this.outlinedBorder,
      this.loading = false,
      this.fontStyle,
      this.elevation,
      this.fontWeight,
      this.letterSpacing,
      this.fontSize,
      this.textColor,
      this.height,
      this.width,
      this.border,
      required this.name,
      this.color,
      this.maxLines,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 286,
      height: height ?? 43,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: elevation ?? 5,
            shape: outlinedBorder ??
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(border ?? 12)),
            backgroundColor: color ?? primaryColor),
        onPressed: onPressed,
        child: loading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(name,
                maxLines: maxLines ?? 1,
                style: GoogleFonts.ubuntu(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                    fontStyle: fontStyle,
                    fontSize: 15),
                textAlign: TextAlign.center),
      ),
    );
  }
}
