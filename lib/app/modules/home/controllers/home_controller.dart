import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:ups_education/app/data/function/dio_get.dart';

import '../../../data/config/config.dart';
import '../../../data/model/home_page_model.dart';

class HomeController extends GetxController {
  var searchController = TextEditingController();
  var homeviewModel = HomePageModel(sidebarMenus: []).obs;
  RxBool assessment = false.obs;
  // ignore: prefer_typing_uninitialized_variables
  var pageController;
  @override
  void onInit() {
    getHomePageData();
    pageController = PageController(
      initialPage: 1,
      keepPage: true,
      viewportFraction: 1.2,
    );
    super.onInit();
  }

  Future getHomePageData() async {
    String? userid = getBox.read(USER_ID);
    var response = await dioGet(ApiUrls.homePage(userid.toString()));

    if (response.statusCode == 200) {
      return homeviewModel(HomePageModel.fromJson(response.data));
    }
  }

  //  Future homeShopping() async {
  //   var response = await dioGet("/api/mhomepage");
  //   if (response.statusCode == 200) {
  //     homepageModel(HomePageModel.fromJson(response.data));
  // }
  // }
}
