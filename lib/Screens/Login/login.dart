import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Colors/colors.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Screens/Signup/signup.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';

import '../../Helpers/Validation Helper/validation_helper.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _key = GlobalKey<FormState>();

    final phoneNumberController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/login.jpg"), fit: BoxFit.cover)),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black45,
              Colors.black12,
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  const Spacer(),
                  Column(
                    children: [
                      Heading(
                        text: 'Laundry DAY',
                        color: mediumWhiteColor,
                      ),
                      14.ph,
                      HeadingSmall(
                        name:
                            "Add your Mobile number. We'll send you a \n verification code",
                        color: whiteColor,
                      ),
                      10.ph,
                      MyTextFormField(
                        textColor: Colors.white,
                        fillColor: const Color.fromARGB(0, 246, 108, 108),
                        hintTextColor: Colors.white,
                        labelTextColor: Colors.white,
                        textInputType: TextInputType.number,
                        maxLength: 9,
                        controller: phoneNumberController,
                        validator: ValidationHelper().validatePhoneNumber,
                        hintText: 'xxxxxxxxx',
                        labelText: 'Mobile Number',
                        contentPadding: const EdgeInsets.only(top: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              end: 12.0, top: 14, start: 10),
                          child: Text(
                            '+966',
                            style: GoogleFonts.ubuntu(
                              fontSize: 15,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.phone_android,
                          color: Colors.white,
                        ),
                      ),
                      10.ph,
                      MyButton(
                        name: 'Continue',
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed(RouteNames().verification);
                        },
                      ),
                      40.ph
                    ],
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}
