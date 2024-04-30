import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.offAllNamed(Routes.HOME);
          },
          child: Text(
            'SplashView is working init commet test',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
