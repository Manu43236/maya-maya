// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:maya_maya_architecture/base/network/dio_client.dart';

enum ApiStatus { LOADING, SUCCESS, FAIL }

class BaseController extends GetxController {
  late DioClient dioClient = DioClient().init();
  var apiStatus = ApiStatus.SUCCESS.obs;
}
