import 'dart:async';

import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/Login/views/login_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // ignore: avoid_print
    print("${getBox.read(USER_ID)}userid");

    Timer(const Duration(seconds: 4), () {
      Get.offAll((getBox.read(IS_USER_LOGGED_IN) ?? false)
          ? BottomNavigationBarView()
          : const LoginView());
    });
  }
}
