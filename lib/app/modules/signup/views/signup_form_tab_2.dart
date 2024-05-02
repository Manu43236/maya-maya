import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../base/const/string_const.dart';
import '../../../../base/const/color_const.dart';
import '../../../../base/utils/responsive_utils.dart';
import '../controllers/signup_controller.dart';
import 'authentication_button.dart';
import 'authentication_text_field.dart';
import 'bottom_text.dart';

class SignupForm extends GetView<SignupController> {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: white,
        ),
      ),
      child: Form(
        key: controller.signupFormKey,
        child: Container(
          height: Get.height * 0.7,
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveUtils.isMediumScreen() ? Get.width * 0.1
                : ResponsiveUtils.isCustomScreen() ?  200  : 500,
            vertical: 10,
          ),
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: kIsWeb ? MainAxisAlignment.start : MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      SIGNUP_TEXT.toUpperCase(),
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
                  height: 20,
                ),
                AuthenticationTextFormField(
                  controller: controller.nameController,
                  focusNode: controller.nameFN,
                  hintText: USER_NAME_TEXT,
                  keyboardType: TextInputType.name,
                  validator: (text) {
                    if (text!.isEmpty) {
                      return PLEASE_ENTER_TEXT+A_NAME_TEXT;
                    }
                    return null;
                  },
                  onFieldSubmitted: (text) {
                    controller.emailFN.requestFocus();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthenticationTextFormField(
                  controller: controller.emailController,
                  focusNode: controller.emailFN,
                  hintText: EMAIL_TEXT,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email != "") {
                      if (controller.isEmailValid(email!)) {
                        return null;
                      } else {
                        return INVALID_EMAIL_TEXT;
                      }
                    } else {
                      return EMAIL_REQUIRED_TEXT;
                    }
                  },
                  onFieldSubmitted: (text) {
                    controller.passwordFN.requestFocus();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthenticationTextFormField(
                  controller: controller.passwordController,
                  focusNode: controller.passwordFN,
                  obscureText: !controller.showPassword,
                  hintText: PASSWORD_TEXT,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.showPasswordValue();
                    },
                    child: Icon(
                      controller.showPassword ? Icons.visibility : Icons.visibility_off,
                      color: Colors.white.withOpacity(0.40),
                    ),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return PLEASE_ENTER_TEXT;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthenticationTextFormField(
                  controller: controller.confirmPassController,
                  focusNode: controller.confirmPassFN,
                  obscureText: !controller.confirmPasswordObscure,
                  hintText: REENTER_PASS_TEXT,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.showConfirmPasswordValue();
                    },
                    child: Icon(
                      controller.confirmPasswordObscure
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white.withOpacity(0.40),
                    ),
                  ),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return PLEASE_ENTER_TEXT+PASSWORD_TEXT;
                    } else if (controller.passwordController.text !=
                        controller.confirmPassController.text) {
                      return PASSWORD_NOT_MATCH_TEXT;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: InkWell(
                    onTap: () {
                      // push(context, const TermsAndConditions());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_box,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          I_ACCPET_TEXT,
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          TERMS_CONDITION_TEXT,
                          style: GoogleFonts.titilliumWeb(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                AuthenticationButton(
                  onTap: () async {
                    if (controller.signupFormKey.currentState!.validate()) {

                    }
                  },
                  text: SIGNUP_TEXT.toUpperCase(),
                ),
                const SizedBox(
                  height: 20,
                ),
                BottomText(
                  leading: ALREADY_HAVE_ACCOUNT_TEXT,
                  suffix: SIGNIN_TEXT,
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-in');
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
