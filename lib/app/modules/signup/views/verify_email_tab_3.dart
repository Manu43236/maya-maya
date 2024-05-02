import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/string_const.dart';
import '../../../../base/utils/responsive_utils.dart';
import '../controllers/signup_controller.dart';
import 'authentication_mode_button_widget.dart';

class VerifyEmailTab extends GetView<SignupController> {
  const VerifyEmailTab({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: ResponsiveUtils.isCustomScreen()
          ? ConstrainedBox(
              constraints: BoxConstraints.tightFor(
                width: Get.width / 2.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    VERIFIY_EMAIL_TEXT,
                    style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    START_MAYA_TEXT,
                    style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Test@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: AuthenticationModeButton(
                      label: SIGN_IN_NOW_TEXT,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/sign-in',
                            arguments: true);
                      },
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom + 2),
                      child: InkWell(
                        onTap: () {
                          controller.changeTab(3);
                        },
                        child: Text(
                          EDIT_EMAIL_TEXT,
                          style: GoogleFonts.firaSans(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  VERIFIY_EMAIL_TEXT,
                  style: GoogleFonts.titilliumWeb(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 3.0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  START_MAYA_TEXT,
                  style: GoogleFonts.titilliumWeb(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Test@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: AuthenticationModeButton(
                    label: SIGN_IN_NOW_TEXT,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/sign-in',
                          arguments: true);
                    },
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom + 2),
                    child: InkWell(
                      onTap: () {
                        controller.changeTab(3);
                      },
                      child: Text(
                        EDIT_EMAIL_TEXT,
                        style: GoogleFonts.firaSans(
                          color: Colors.white,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
