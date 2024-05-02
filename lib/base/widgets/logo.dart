import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../const/color_const.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.showTagline = true,
    this.width,
  }) : super(key: key);
  final bool showTagline;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Center(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/logo.svg",
                      color: Colors.white,
                      width: 70,
                      height: 60,
                    ),
                    if (showTagline) ...[
                      SizedBox(
                        height: Get.height / 35,
                      ),
                      Text(
                        "An AI powered decision-aid tool to\nhelp you define your career.",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontSize: 14,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
              Center(
                child: Container(
                  constraints: const BoxConstraints.tightFor(
                    width: 120,
                    height: double.infinity,
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
    );
  }
}
