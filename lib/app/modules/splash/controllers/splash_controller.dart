import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    print('SPLASH CONTROLLEr');
    Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed(Routes.SIGNIN, parameters: {'id': 'nani'});
    });
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
