import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/string_const.dart';
import '../../../../base/const/color_const.dart';
import '../../../../base/utils/responsive_utils.dart';
import '../../signup/views/authentication_button.dart';
import '../../signup/views/authentication_text_field.dart';
import '../../signup/views/bottom_text.dart';
import '../controllers/signin_controller.dart';

class SigninForm extends GetView<SigninController> {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveUtils.isMediumScreen()
            ? Get.width * 0.1
            : ResponsiveUtils.isCustomScreen()
                ? 200
                : 500,
      ),
      child: Theme(
        data: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: white,
          ),
        ),
        child: Form(
          key: controller.signInFormKey,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      controller.changeTab(0);
                    },
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    SIGNIN_TEXT,
                    style: GoogleFonts.titilliumWeb(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 4.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              AuthenticationTextFormField(
                controller: controller.usernameController,
                focusNode: controller.usernameFN,
                hintText: ENTER_EMAIL_TEXT,
                keyboardType: TextInputType.emailAddress,
                validator: (email) {},
              ),
              const SizedBox(
                height: 30,
              ),
              AuthenticationTextFormField(
                controller: controller.passwordController,
                focusNode: controller.passwordFN,
                hintText: PASSWORD_TEXT,
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: InkWell(
                  onTap: () {
                    controller.showPasswordValue();
                  },
                  child: Icon(
                    controller.showPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.white.withOpacity(0.40),
                  ),
                ),
                obscureText: !controller.showPassword,
                validator: (text) {
                  if (text!.isEmpty) {
                    return "$ENTER_TEXT $PASSWORD_TEXT";
                  }
                  return null;
                },
                onFieldSubmitted: (value) {},
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    controller.changeTab(2);
                  },
                  child: const Text(
                    FORGOT_PASS_TEXT,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AuthenticationButton(
                onTap: () async {},
                text: SIGNIN_TEXT.toUpperCase(),
              ),
              SizedBox(
                height: Get.height * 0.18,
              ),
              BottomText(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                leading: DONT_HAVE_ACCOUNT_TEXT,
                suffix: SIGNUP_TEXT,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
