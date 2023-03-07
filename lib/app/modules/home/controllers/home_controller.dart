import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/all_category_model.dart';
import 'package:ups_education/app/data/models/suggested_video_model.dart';
import 'package:ups_education/app/modules/MyAccount/controllers/my_account_controller.dart';

import '../../../data/config/config.dart';
import '../../../data/model/home_page_model.dart';

class HomeController extends GetxController {
  var homeviewModel = HomePageModel().obs;
  var allCategoryModel = AllCategoryModel().obs;
  // ignore: prefer_typing_uninitialized_variables
  var categoryItem;
  var index = 0.obs;
  var refreshControllerForHome = RefreshController();
  // var ourSuccessfulStudent = OurSuccessfulStudentModel().obs;
  // var studentSuggestedModel = SuggestedVideo().obs;
  var suggestedVideoModel = SuggestedVideo().obs;
  RxBool assessment = false.obs;
  // ignore: prefer_typing_uninitialized_variables
  var pageController;
  @override
  void onInit() {
    getHomePageData();
    allCategoryData();

    // ourSuccessFulstudentData(1);
    studentSuggested();

    pageController = PageController(
      initialPage: 1,
      keepPage: true,
      viewportFraction: 1.2,
    );
    super.onInit();
  }

  @override
  void onClose() {
    refreshControllerForHome.dispose();
    super.onClose();
  }

  Future getHomePageData() async {
    var response = await dioGet("/apphome?user_id=${getBox.read(USER_ID)}");
    // refreshControllerForHome.requestLoading();
    if (response.statusCode == 200) {
      return homeviewModel(HomePageModel.fromJson(response.data));
    }
    
    await Get.find<MyAccountController>().myAccountData();

  }

  // Future ourSuccessFulstudentData(page) async {
  //   var response = await dioGet(ApiUrls.successsfulStudent(page));

  //   if (response.statusCode == 200) {
  //     return ourSuccessfulStudent(
  //         OurSuccessfulStudentModel.fromJson(response.data));
  //   }
  // }

  Future studentSuggested() async {
    var response = await dioGet("/appsuggestedvideo");

    if (response.statusCode == 200) {
      return suggestedVideoModel(SuggestedVideo.fromJson(response.data));
      // StudentSuggestedModel.fromJson(response.data));
    }
  }

  @override
  void refresh() {
    getBox.read(USER_ID);
    super.refresh();
  }

  Future allCategoryData() async {
    var response = await dioGet("/appallcategory");
    if (response.statusCode == 200) {
      return allCategoryModel(AllCategoryModel.fromJson(response.data));
    }
  }
}
