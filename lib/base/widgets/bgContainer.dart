import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/image_const.dart';
import '../const/color_const.dart';

class BgContainer extends StatefulWidget {
  const BgContainer({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);
  final Widget child;
  final double? height;

  @override
  State<BgContainer> createState() => _BgContainerState();
}

class _BgContainerState extends State<BgContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: bgGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        image: kIsWeb
            ? null
            : DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.2,
                image: AssetImage(BG_IMAGE),
              ),
      ),
      child: widget.child,
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: bgGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter),
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.2,
          image: AssetImage(BG_IMAGE),
        ),
      ),
      child: child,
    );
  }
}
