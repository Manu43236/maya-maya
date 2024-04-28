import 'package:get/get.dart';

const int LARGE_SCREEN_SIZE = 1366;
const int MEDIUM_SCREEN_SIZE = 768;
const int SMALL_SCREEN_SIZE = 360;
const int CUSTOM_SCREEN_SIZE = 1100;

class ResponsiveUtils {
  static bool isSmallScreen() {
    return Get.width < MEDIUM_SCREEN_SIZE;
  }

  static bool isMediumScreen() =>
      Get.width >= MEDIUM_SCREEN_SIZE && Get.width < LARGE_SCREEN_SIZE;

  static bool isLargeScreen() => Get.width >= LARGE_SCREEN_SIZE;
  static bool isCustomScreen() =>
      Get.width >= MEDIUM_SCREEN_SIZE && Get.width <= CUSTOM_SCREEN_SIZE;
}
