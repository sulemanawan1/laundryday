import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My Heading/heading.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(
                text: "What's your Full Name?",
              ),
              20.ph,
              Text(
                "Name",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: greyColor),
              ),
              10.ph,
              const MyTextFormField(
                  hintText: 'Enter your Full Name.', labelText: ''),
              20.ph,
              MyButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(RouteNames().home);
                },
                name: 'Signup',
              ),
              40.ph
            ],
          ),
        ],
      ),
    ));
  }
}

class HeadingMedium extends StatelessWidget {
  final String name;
  Color? color;

  HeadingMedium({super.key, required this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: color ?? blackColor),
    );
  }
}

class HeadingSmall extends StatelessWidget {
  final String name;

  Color? color;
  HeadingSmall({super.key, required this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: color ?? greyColor,
      ),
    );
  }
}
