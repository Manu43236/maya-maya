import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAndToNamed(Routes.SIGNUP);
    });
    super.onInit();
  }

}