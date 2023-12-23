import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Resources/Colors/colors.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        title: Text(
          'Profile',
          style: GoogleFonts.ubuntu(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the value as needed
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset('assets/
            30.ph,
            Text(
              'Personal Information',
              style:
                  GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            20.ph,
            MyTextFormField(
                hintText: 'Mobile Number', labelText: 'Mobile Number'),
            20.ph,
            MyTextFormField(hintText: 'First Name', labelText: 'First Name'),
            20.ph,
            MyTextFormField(hintText: 'Last Name', labelText: 'Last Name'),
            20.ph,
            SizedBox(
              width: 286,
              child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onTap: () {},
                  tileColor: Color(0xffEEEEEE),
                  trailing: Icon(Icons.navigate_next),
                  title: Text(
                    'Address',
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.w500, color: primaryColor),
                  )),
            ),
            20.ph,
            MyButton(
              name: 'Save',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
