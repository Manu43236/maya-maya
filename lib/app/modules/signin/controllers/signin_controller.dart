import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController

  final count = 0.obs;
  var showLoginForm = false.obs;
  var showForgotPasswordForm = false.obs;
  
  final signInFormKey = GlobalKey<FormState>();
  @override
  void onInit() {
    
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
