import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/signin/controllers/signin_controller.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';
import 'package:maya_maya_architecture/base/const/color_const.dart';
import 'package:maya_maya_architecture/base/widgets/bgContainer.dart';
import 'package:maya_maya_architecture/base/widgets/buttons/auth_button.dart';
import 'package:maya_maya_architecture/base/widgets/logo.dart';

class WebSigninView extends GetView<SigninController> {
  var height;

  var width;

  WebSigninView({super.key, this.height, this.width});
  @override
  Widget build(BuildContext context) {
    return BgContainer(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Expanded(
          flex: 1,
          child: Logo(
            showTagline: false,
          ),
        ),
        Expanded(flex: 3, child: _getSinginButtons())

        //
      ]),
    );
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
              // widget.tabController.animateTo(
              //   1,
              //   duration: const Duration(
              //     milliseconds: 1500,
              //   ),
              // );
            },
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign Up',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          const Spacer(),
        ],
      ),
    );
  }
}
