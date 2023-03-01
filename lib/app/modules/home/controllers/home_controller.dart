import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/all_category_model.dart';
import 'package:ups_education/app/data/models/suggested_video_model.dart';

import '../../../data/config/config.dart';
import '../../../data/model/home_page_model.dart';

class HomeController extends GetxController {
  var homeviewModel = HomePageModel().obs;
  var allCategoryModel = AllCategoryModel().obs;
  // ignore: prefer_typing_uninitialized_variables
  var categoryItem;
  var refreshControllerForHome = RefreshController();
  // var ourSuccessfulStudent = OurSuccessfulStudentModel().obs;
  // var studentSuggestedModel = SuggestedVideo().obs;
  var suggestedVideoModel = SuggestedVideo().obs;
  RxBool assessment = false.obs;
  // var userid = getBox.read(USER_ID);
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

  // Future getSearchResult(String keyword) async {
  //   var data = {"keyword": keyword};
  //   var response = await dioPost(data: data, endUrl: ApiUrls.search);
  //   List<SearchModel> searchModel = [];
  //   if (response.statusCode == 200) {
  //     searchModel = json.decode(response.data);
  //   return searchModel.map((data) => SearchModel.fromJson(keyword));
  //     } else {
  //       return ApiResponse(
  //           isSuccess: false, errorCause: "No Result Found", resObject: null);
  //     }
  // }

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
