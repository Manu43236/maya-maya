import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/signin/controllers/signin_controller.dart';

class MobileSigninView extends GetView<SigninController> {
  const MobileSigninView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobileSigninView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MobileSigninView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
