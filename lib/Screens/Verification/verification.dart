import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:laundryday/Screens/Signup/signup.dart';
import 'package:laundryday/Widgets/My%20Heading/heading.dart';
import 'package:pinput/pinput.dart';

import '../../Helpers/Validation Helper/validation_helper.dart';
import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: key,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  const Icon(
                    Icons.lock_outlined,
                    size: 80,
                    color: primaryColor,
                  ),
                  12.ph,
                  Heading(text: 'Verification'),
                  12.ph,
                  HeadingSmall(name: "Enter your 6 digits verification code."),
                  6.ph,
                  Pinput(
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    validator: ValidationHelper().otpValidator,
                    // controller: verificationCodeController.otpCodeController,
                    length: 6,
                    onCompleted: (val) {},
                  ),
                  10.ph,
                  MyButton(
                    // loading: verificationCodeController.isLoading.value,
                    name: 'Verify',
                    onPressed: () {
                      GoRouter.of(context).pushNamed(RouteNames().signUp);
                    },
                  ),
                  12.ph,
                  Wrap(
                    children: [
                      HeadingSmall(name: "Didn't receive a verification code?"),
                      5.pw,
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Resend",
                          style: GoogleFonts.poppins(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                  40.ph
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
