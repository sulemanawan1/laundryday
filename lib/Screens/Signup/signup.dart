import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "What's your name?",
              style: GoogleFonts.ubuntu(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: primaryColor),
            ),
            14.ph,
            Text(
              "Enter the name you user in real life.",
              style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            10.ph,
            const MyTextFormField(
                hintText: 'First Name', labelText: 'First Name'),
            10.ph,
            MyTextFormField(hintText: 'Last Name', labelText: 'Last Name'),
            30.ph,
            MyButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(RouteNames().laundries);
              },
              name: 'Signup',
            ),
          ],
        ),
      ),
    );
    ;
  }
}
