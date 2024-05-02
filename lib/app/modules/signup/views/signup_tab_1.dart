import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maya_maya_architecture/base/const/image_const.dart';

import '../../../../base/const/string_const.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';
import 'authentication_mode_button_widget.dart';


class SignupButtonsWidget extends GetView<SignupController> {
  const SignupButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        child: Column(
          children: [
            AuthButton(
              leadingIcon: SvgPicture.asset(
                GOOGLE_IMAGE,
                height: 27,
                width: 27,
              ),
              label: SIGN_UP_GOOGLE_TEXT,
              onPressed: () async {
              },
            ),
            if (kIsWeb || defaultTargetPlatform == TargetPlatform.iOS)
              AuthButton(
                leadingIcon: SvgPicture.asset(
                  APPLE_IMAGE,
                  height: 27,
                  width: 27,
                  color: Colors.white,
                ),
                label: SIGN_UP_APPLE_TEXT,
                onPressed: () async {
                },
              ),
            const SizedBox(
              height: 22.0,
            ),
            Container(
              height: kIsWeb ? 0.8 : 0.5,
              color: Colors.white,
              width: kIsWeb ? 150 : Get.width / 2.7,
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
              label: SIGN_UP_EMAIL_TEXT,
              onPressed: () async {
                controller.tabController.animateTo(1);
              },
            ),

            const SizedBox(
              height: kIsWeb ? 25 : 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
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
              height: kIsWeb ? 15 : 20,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: ALREADY_HAVE_ACCOUNT_TEXT,
                    semanticsLabel: ALREADY_HAVE_ACCOUNT_TEXT,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: SIGNIN_TEXT,
                    semanticsLabel: SIGNIN_TEXT,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.offAndToNamed(Routes.SIGNIN);
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
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
