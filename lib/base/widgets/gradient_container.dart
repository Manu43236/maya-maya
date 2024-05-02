import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/color_const.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: authBgGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
