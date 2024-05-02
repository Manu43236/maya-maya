import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../base/const/string_const.dart';
import '../../../../base/const/color_const.dart';
import '../../../../base/utils/responsive_utils.dart';
import '../../signup/views/authentication_button.dart';
import '../../signup/views/authentication_text_field.dart';
import '../controllers/signin_controller.dart';

class ForgotPassword extends GetView<SigninController> {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveUtils.isMediumScreen() ? Get.width * 0.1
            : ResponsiveUtils.isCustomScreen() ?  200  : 500,
      ),
      child: Theme(
        data: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: white,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.changeTab(1);
                  },
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const Text(
                  FORGOT_TEXT,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 4.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Enter your email and we will send\nyou a password reset link...
            const Text(
              RESET_TEXT,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AuthenticationTextFormField(
              controller: controller.emailController,
              focusNode: FocusNode(),
              hintText: ENTER_EMAIL_TEXT,
              keyboardType: TextInputType.emailAddress,
              validator: (email) {

              },
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: AuthenticationButton(
                onTap: () async {
                },
                text: SEND_EMAIL_TEXT,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
