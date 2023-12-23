import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundryday/Resources/Sizedbox/sizedbox.dart';
import 'package:pinput/pinput.dart';

import '../../Helpers/Validation Helper/validation_helper.dart';
import '../../Resources/Colors/colors.dart';
import '../../Routes/route_names.dart';
import '../../Widgets/My Button/my_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lock_outlined,
                  size: 80,
                  color: primaryColor,
                ),
                12.ph,
                Text(
                  "Verification",
                  style: GoogleFonts.ubuntu(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
                12.ph,
                Text(
                  "Enter your 6 digits verification code.",
                  style: GoogleFonts.ubuntu(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                6.ph,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Pinput(
                    validator: ValidationHelper().otpValidator,
                    // controller: verificationCodeController.otpCodeController,
                    length: 6,
                    onCompleted: (val) {},
                  ),
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
                    Text(
                      "Didn't receive a verification code?",
                      style: GoogleFonts.ubuntu(),
                    ),
                    5.pw,
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        style: GoogleFonts.ubuntu(color: primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
