
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var searchController = TextEditingController();
  RxBool assessment = false.obs;
  var pageController;
  @override
  void onInit() {
    pageController = PageController(
      initialPage: 1,
      keepPage: true,
      viewportFraction: 1.2,
    );
    super.onInit();
  }
}
