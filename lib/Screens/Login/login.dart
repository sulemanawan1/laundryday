import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';

import '../../Helpers/Validation Helper/validation_helper.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';
import '../../Widgets/My TextForm Field/my_textform_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();

    final phoneNumberController = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/download.jpg"), fit: BoxFit.cover)),
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
          body: Center(
            child: Form(
                key: _key,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Smart Laundry",
                        style: GoogleFonts.ubuntu(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      14.ph,
                      Text(
                        "Add your Mobile number. We'll send you a \n verification code",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      14.ph,
                      MyTextFormField(
                        textColor: Colors.white,
                        fillColor: Colors.transparent,
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
                      20.ph,
                      MyButton(
                        name: 'Continue',
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed(RouteNames().verification);
                        },
                      )
                    ])),
          ),
        ),
      ),
    );
  }
}
