import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/image_const.dart';
import '../const/color_const.dart';

class BgContainer extends GetView {
  const BgContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
  });
  final double? width;
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Get.height,
      width: width ?? Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: bgGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        image: kIsWeb
            ? null
            : DecorationImage(
                fit: BoxFit.fill,
                opacity: 0.2,
                image: AssetImage(BG_IMAGE),
              ),
      ),
      child: child,
    );
  }
}
