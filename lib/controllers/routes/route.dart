import 'package:get/get.dart';

import '../../views/login/login.dart';
import '../../views/splash/splash.dart';
import '../login/loginBinding.dart';
import '../splash/splashBinding.dart';




final List<GetPage<dynamic>> route = [
  GetPage(name: "/splash", page: () => splash(), binding: splashBinding()),
  GetPage(name: "/login", page: () => login(), binding: loginBinding()),

];