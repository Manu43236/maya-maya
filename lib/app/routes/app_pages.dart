import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/modules/signin/bindings/signin_binding.dart';
import 'package:maya_maya_architecture/app/modules/signin/views/signin_view.dart';
import 'package:maya_maya_architecture/app/modules/signup/bindings/signup_binding.dart';
import 'package:maya_maya_architecture/app/modules/signup/views/signup_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    )
  ];
}
