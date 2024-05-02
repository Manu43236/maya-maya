import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final signupFormKey = GlobalKey<FormState>();

  late TabController tabController;

  final FocusNode nameFN = FocusNode();
  final FocusNode emailFN = FocusNode();
  final FocusNode passwordFN = FocusNode();
  final FocusNode confirmPassFN = FocusNode();

  late TextEditingController nameController,
      emailController,
      passwordController,
      confirmPassController;

  bool confirmPasswordObscure = false;
  bool showPassword = false, showConfirmPassword = false;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 5);

    nameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    confirmPassController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    confirmPassController.dispose();
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

  bool isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  showPasswordValue() {
    showPassword = !showPassword;
  }

  showConfirmPasswordValue() {
    showConfirmPassword = !showPassword;
  }
}
