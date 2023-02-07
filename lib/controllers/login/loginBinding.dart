import 'package:alazhar_mobile/controllers/login/loginController.dart';
import 'package:get/get.dart';

class loginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(loginController());
  }
}