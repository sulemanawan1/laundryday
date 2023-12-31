import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Screens/Signup/signup.dart';
import 'package:laundryday/Widgets/My%20App%20bar/my_app_bar.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

import '../../Resources/Colors/colors.dart';
import '../../Widgets/My Button/my_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: MyAppBar(
        title: "Profile",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.ph,
            Heading(text: 'Personal Information'),
            30.ph,
            Row(
              children: [
                const Icon(
                  Icons.person_2_outlined,
                  color: greyColor,
                ),
                10.pw,
                HeadingSmall(name: "Full Name"),
              ],
            ),
            10.ph,
            Text(
              "Suleman Abrar",
              style: GoogleFonts.poppins(),
            ),
            const Divider(),
            10.ph,
            Row(
              children: [
                const Icon(
                  Icons.phone_android_outlined,
                  color: greyColor,
                ),
                10.pw,
                HeadingSmall(name: "Mobile Number"),
              ],
            ),
            10.ph,
            Text(
              "+96633247474",
              style: GoogleFonts.poppins(),
            ),
            const Divider(),
            const Spacer(),
            MyButton(
              name: 'Edit Profile',
              onPressed: () {},
            ),
            30.ph,
          ],
        ),
      ),
    );
  }
}
