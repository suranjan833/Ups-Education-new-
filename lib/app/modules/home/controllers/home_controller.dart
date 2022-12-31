import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var searchController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var pagecontroller;
  RxBool assessment = false.obs;
  @override
  void onInit() {
    pagecontroller = PageController(
      viewportFraction: 1,
    );
    super.onInit();
  }
}
