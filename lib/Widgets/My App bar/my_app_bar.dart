import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Colors/colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  bool isLeading;
  MyAppBar({super.key, required this.title, this.isLeading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(color: primaryColor),
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          title!,
          style: GoogleFonts.poppins(color: blackColor),
        ),
        leading: isLeading
            ? IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              )
            : null);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
