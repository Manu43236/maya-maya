import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../base/const/image_const.dart';
import '../../../../base/const/string_const.dart';
import '../../../../base/const/color_const.dart';
import '../../../../base/widgets/gradient_container.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        child: Stack(
          fit: StackFit.expand,
          children: [
            if(!kIsWeb)
             Image.asset(
               BG_IMAGE,
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.25),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: Get.height,
                width: Get.width,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          LOGO_IMAGE,
                        ),
                        SizedBox(
                          height: Get.height / 16,
                        ),
                        Text(
                          SLOGON_TEXT,
                          style: TextStyle(
                            fontSize: Get.height / 35,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        constraints: BoxConstraints.tightFor(
                          width: 180,
                          height: Get.height,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              silver.withOpacity(0.2),
                              silver.withOpacity(0.0),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
