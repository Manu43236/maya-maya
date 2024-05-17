import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/home/views/web_views/web_home_view.dart';
import 'package:maya_maya_architecture/base/responsive_views/base_responsive_view.dart';

import '../controllers/home_controller.dart';
import 'mobile_views/mobile_home_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: BaseResponsiveView(
          width: Get.width,
          largeScreen: WebHomeView(),
          smallScreen: const MobileHomeView()),
    );
  }
}
