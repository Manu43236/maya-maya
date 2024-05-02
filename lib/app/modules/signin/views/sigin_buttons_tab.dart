import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../base/const/image_const.dart';
import '../../../../base/const/string_const.dart';
import '../../signup/views/authentication_mode_button_widget.dart';
import '../../signup/views/bottom_text.dart';
import '../controllers/signin_controller.dart';

class SiginButtons extends GetView<SigninController> {
  const SiginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AuthButton(
                  leadingIcon: SvgPicture.asset(
                    GOOGLE_IMAGE,
                    height: 27,
                    width: 27,
                    // color: Colors.white,
                  ),
                  label: SIGN_GOOGLE_TEXT,
                  onPressed: () async {},
                ),
                if (kIsWeb || defaultTargetPlatform == TargetPlatform.iOS)
                  AuthButton(
                    leadingIcon: SvgPicture.asset(
                      APPLE_IMAGE,
                      height: 27,
                      width: 27,
                      color: Colors.white,
                    ),
                    label: SIGN_APPLE_TEXT,
                    onPressed: () async {},
                  ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: kIsWeb ? 0.8 : 0.5,
                  color: Colors.white,
                  width: kIsWeb ? 150 : Get.width / 2.7,
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
                  label: SIGN_EMAIL_TEXT,
                  onPressed: () {
                    controller.changeTab(1);
                  },
                ),
                const Spacer(),
                BottomText(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  leading: DONT_HAVE_ACCOUNT_TEXT,
                  suffix: SIGNUP_TEXT,
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
