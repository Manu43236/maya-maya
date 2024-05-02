import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/string_const.dart';
import '../controllers/signup_controller.dart';
import 'authentication_mode_button_widget.dart';
import 'authentication_text_field.dart';

class EditEmail extends GetView<SignupController> {
  const EditEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Column(
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
          AuthenticationTextFormField(
            controller: controller.emailController,
            focusNode: controller.emailFN,
            hintText: ENTER_EMAIL_TEXT,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: AuthenticationModeButton(
              label: RECEIVE_VERIFICATION_TEXT,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
