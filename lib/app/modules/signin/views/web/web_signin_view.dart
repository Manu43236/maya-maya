// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maya_maya_architecture/app/modules/signin/controllers/signin_controller.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';
import 'package:maya_maya_architecture/base/const/color_const.dart';
import 'package:maya_maya_architecture/base/widgets/bgContainer.dart';
import 'package:maya_maya_architecture/base/widgets/buttons/auth_button.dart';
import 'package:maya_maya_architecture/base/widgets/buttons/custom_button.dart';
import 'package:maya_maya_architecture/base/widgets/clickable_suffex_text.dart';
import 'package:maya_maya_architecture/base/widgets/logo.dart';
import 'package:maya_maya_architecture/base/widgets/text_fields/common_text_field.dart';

class WebSigninView extends GetView<SigninController> {
  WebSigninView({super.key, this.height, this.width});

  double? height;

  double? width;

  @override
  Widget build(BuildContext context) {
    return BgContainer(
        child: Obx(
      () => Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Expanded(
          flex: 15,
          child: Logo(
            showTagline: false,
          ),
        ),
        Expanded(
            flex: 40,
            child: controller.showLoginForm.value
                ? controller.showForgotPasswordForm.value
                    ? _forgotPassword()
                    : _signinForm()
                : _getSinginButtons())

        //
      ]),
    ));
  }

  _getSinginButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AuthButton(
            leadingIcon: SvgPicture.asset(
              "assets/svgs/google_colored.svg",
              height: 27,
              width: 27,
              // color: Colors.white,
            ),
            label: "Sign-in with Google",
            onPressed: () async {
              try {
                // await _handleGoogleSignIn();
              } catch (e) {
                // Loader.dismiss();
                // log(e);
              }
            },
          ),
          if (kIsWeb || defaultTargetPlatform == TargetPlatform.iOS)
            AuthButton(
              leadingIcon: SvgPicture.asset(
                "assets/svgs/apple_black.svg",
                height: 27,
                width: 27,
                color: Colors.white,
              ),
              label: "Sign-in with Apple",
              onPressed: () async {
                // await _handleAppleLogin();
              },
            ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            height: 0.8,
            color: Colors.white,
            width: 150,
          ),
          const SizedBox(
            height: 10.0,
          ),
          AuthButton(
            leadingIcon: const Icon(
              Icons.alternate_email_rounded,
              size: 26,
              color: Colors.white,
            ),
            label: "Sign-in with E-mail",
            onPressed: () {
              controller.showLoginForm.value = true;
            },
          ),
          const Spacer(),
          ClickableSuffexText(
            prefixText: 'Don\'t have an account? ',
            suffexText: 'Sign Up',
            onClick: () {
              Get.toNamed(Routes.SIGNUP);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }

  _signinForm() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width < 750
            ? Get.width * 0.1
            : Get.width < 1100
                ? 200
                : 500,
      ),
      child: Form(
        key: controller.signInFormKey,
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.showLoginForm.value = false;
                    // widget.tabController.animateTo(
                    //   0,
                    //   duration: const Duration(
                    //     milliseconds: 1500,
                    //   ),
                    // );
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
                  "SIGN IN",
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
            CommonTextFormField(
              controller: TextEditingController(),
              focusNode: FocusNode(),
              hintText: "Enter E-mail",
              keyboardType: TextInputType.emailAddress,
              validator: (email) {
                return null;
                // if (email != "") {
                //   if (isEmailValid(email!)) {
                //     return null;
                //   } else {
                //     return "Invalid email ID";
                //   }
                // } else {
                //   return "Email ID required";
                // }
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CommonTextFormField(
              controller: TextEditingController(),
              focusNode: FocusNode(),
              hintText: "Password",
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.visibility, // : Icons.visibility_off,
                  color: Colors.white.withOpacity(0.40),
                ),
              ),
              obscureText: false,
              validator: (text) {
                if (text!.isEmpty) {
                  return "Enter password";
                }
                return null;
              },
              onFieldSubmitted: (value) {
                // onAuthenticateButtonPress(provider);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  controller.showForgotPasswordForm.value = true;
                  // push(context, const ForgotPassword());
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onTap: () async {
                // onAuthenticateButtonPress(provider);
              },
              text: "SIGN IN",
            ),
            SizedBox(
              height: Get.height * 0.18,
            ),
            ClickableSuffexText(
              prefixText: 'Don\'t have an account? ',
              suffexText: 'Sign Up',
              onClick: () {
                Get.toNamed(Routes.SIGNUP);
              },
            )
          ],
        ),
      ),
    );
  }

  _forgotPassword() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width < 750
            ? Get.width * 0.1
            : Get.width < 1100
                ? 200
                : 500,
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
                    controller.showForgotPasswordForm.value = false;

                    // pop(context);
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
                  "FORGOT PASSWORD",
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
              "Enter your email and we will send you a password reset link...",
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
            CommonTextFormField(
              controller: TextEditingController(),
              focusNode: FocusNode(),
              hintText: "Enter E-mail",
              keyboardType: TextInputType.emailAddress,
              validator: (email) {
                // if (email != "") {
                //   if (isEmailValid(email!)) {
                //     return null;
                //   } else {
                //     return "Invalid email ID";
                //   }
                // } else {
                //   return "Email ID required";
                // }
              },
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: CustomButton(
                onTap: () async {
                  // if (emailController.text.isNotEmpty) {
                  //   await forgotPassword(context);
                  // } else {
                  //   commonToast(context, "Please enter your email");
                  // }
                },
                text: "SEND MAIL",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
