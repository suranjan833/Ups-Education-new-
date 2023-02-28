import 'dart:async';

import 'package:get/get.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 5), () {
      Get.offAll(BottomNavigationBarView());
    });
  }
}
