import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Resources/Colors/colors.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final int? maxLength;
  final EdgeInsetsGeometry? padding;
  final bool? fill;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final String? labelText;
  final int? maxLines;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? textColor;
  final Color? fillColor;
  final TextInputType? textInputType;

  final String? Function(String?)? validator;
  final void Function()? onTap;
  const MyTextFormField({
    super.key,
    this.maxLines,
    this.textAlign,
    this.padding,
    this.readOnly,
    this.textColor,
    this.textInputType,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.fontWeight,
    this.fill,
    this.fontSize,
    this.onTap,
    this.width,
    this.height,
    this.maxLength,
    this.controller,
    this.fillColor,
    this.validator,
    required this.hintText,
    this.labelTextColor,
    required this.labelText,
    this.hintTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 286,
      // height: height ?? 43.w,
      child: TextFormField(
        style: GoogleFonts.ubuntu(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            letterSpacing: 0.05,
            color: textColor ?? null),
        keyboardType: textInputType,
        textAlign: textAlign ?? TextAlign.start,
        onTap: onTap,
        validator: validator,
        maxLines: maxLines ?? 1,
        controller: controller,
        maxLength: maxLength ?? null,
        cursorColor: primaryColor,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
          errorStyle: GoogleFonts.ubuntu(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: primaryColor, width: 1.5),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: contentPadding ?? EdgeInsets.fromLTRB(25, 13, 0, 13),
          filled: fill ?? true,
          labelStyle: GoogleFonts.ubuntu(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: labelTextColor ?? const Color(0xff555555)),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: hintTextColor ?? const Color(0xff555555),
          ),
          hintText: hintText,
          labelText: labelText,
          fillColor: fillColor ?? const Color(0xffEEEEEE),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: primaryColor, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Color(0xffEEEEEE), width: 1.5),
          ),
        ),
      ),
    );
  }
}
