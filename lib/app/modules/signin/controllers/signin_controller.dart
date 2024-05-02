import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final signInFormKey = GlobalKey<FormState>();

  late TabController tabController;
  late TextEditingController emailController;

  late TextEditingController usernameController;
  late TextEditingController passwordController;

  FocusNode usernameFN = FocusNode();
  FocusNode passwordFN = FocusNode();

  bool showPassword = false;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 3);
    emailController = TextEditingController();
    usernameController = TextEditingController(text: "infopitroda@gmail.com");
    passwordController = TextEditingController(text: "Perfect1@");
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    tabController.dispose();

    super.onClose();
  }

  changeTab(int tab) {
    tabController.animateTo(
      tab,
      duration: const Duration(
        milliseconds: 1500,
      ),
    );
  }

  showPasswordValue() {
    showPassword = !showPassword;
  }
}
