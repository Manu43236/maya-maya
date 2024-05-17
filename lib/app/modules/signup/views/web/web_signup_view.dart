import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maya_maya_architecture/app/modules/signin/controllers/signin_controller.dart';
import 'package:maya_maya_architecture/base/widgets/bgContainer.dart';
import 'package:maya_maya_architecture/base/widgets/buttons/auth_button.dart';
import 'package:maya_maya_architecture/base/widgets/logo.dart';

class WebSignupView extends GetView<SigninController> {
  const WebSignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return BgContainer(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Expanded(
          flex: 15,
          child: Logo(
            showTagline: true,
          ),
        ),
        Expanded(flex: 40, child: 
        
        _getSignupForm())

        //
      ]),
    );
  }

  _getSignupForm() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Column(
        children: [
          AuthButton(
            leadingIcon: SvgPicture.asset(
              "assets/svgs/google_colored.svg",
              height: 27,
              width: 27,
              // color: Colors.white,
            ),
            label: "Sign-up with Google",
            onPressed: () async {
              try {
                // await _handleGoogleSignIn();
                // Loader.dismiss();
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
              label: "Sign-up with Apple",
              onPressed: () async {
                // await _handleAppleLogin();
              },
            ),
          const SizedBox(
            height: 22.0,
          ),
          Container(
            height: kIsWeb ? 0.8 : 0.5,
            color: Colors.white,
            width: 150,
          ),
          const SizedBox(
            height: 8.0,
          ),
          AuthButton(
            leadingIcon: const Icon(
              Icons.alternate_email_rounded,
              size: 26,
              color: Colors.white,
            ),
            label: "Sign-up with E-mail",
            onPressed: () {
              controller.showLoginForm.value = true;
              // widget.tabController.animateTo(1);
            },
          ),
          const SizedBox(
            height: kIsWeb ? 25 : 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                // push(context, const TermsAndConditions());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.check_box,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "I accept",
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    " Terms and Conditions.",
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Already have an account?  ",
                  semanticsLabel: "Already have an account?",
                  style: Get.context!.textTheme.subtitle2!
                      .copyWith(color: Colors.white),
                ),
                TextSpan(
                  text: "Sign In",
                  semanticsLabel: "Sign In",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.back();
                    },
                  style: GoogleFonts.titilliumWeb(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Text(
            'v3.5.1',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
