import 'package:get/get.dart';

const int LARGE_SCREEN_SIZE = 1366;
const int MEDIUM_SCREEN_SIZE = 768;
const int SMALL_SCREEN_SIZE = 360;
const int CUSTOM_SCREEN_SIZE = 1100;

class ResponsiveUtils {
  static bool isSmallScreen({width}) {
    return width < MEDIUM_SCREEN_SIZE;
  }

  static bool isMediumScreen({width}) =>
      width >= MEDIUM_SCREEN_SIZE && width < LARGE_SCREEN_SIZE;

  static bool isLargeScreen({width}) => width >= LARGE_SCREEN_SIZE;
  static bool isCustomScreen({width}) =>
      width >= MEDIUM_SCREEN_SIZE && width <= CUSTOM_SCREEN_SIZE;
}
