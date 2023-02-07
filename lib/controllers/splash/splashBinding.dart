import 'package:alazhar_mobile/controllers/splash/splashController.dart';
import 'package:get/get.dart';

class splashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(splashController());
  }
}
