import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/signin/views/web/web_signin_view.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: ((context, constraints) =>  WebSigninView(
height:constraints.maxHeight,
width: constraints.maxWidth

            ))));
  }
}
