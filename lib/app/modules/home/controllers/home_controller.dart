import 'package:flutter/cupertino.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/student_suggested_model.dart';

import '../../../data/config/config.dart';
import '../../../data/model/home_page_model.dart';

class HomeController extends GetxController {
  var homeviewModel = HomePageModel().obs;

  // var ourSuccessfulStudent = OurSuccessfulStudentModel().obs;
  var studentSuggestedModel = StudentSuggestedModel().obs;
  RxBool assessment = false.obs;

  // ignore: prefer_typing_uninitialized_variables
  var pageController;
  @override
  void onInit() {
    getHomePageData();
    // ourSuccessFulstudentData(1);
    studentSuggested(1);

    pageController = PageController(
      initialPage: 1,
      keepPage: true,
      viewportFraction: 1.2,
    );
    super.onInit();
  }

  Future getHomePageData() async {
    String? userid = "1";
   // getBox.read(USER_ID);
    var response = await dioGet(ApiUrls.homePage(userid.toString()));

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

  Future studentSuggested(page) async {
    var response = await dioGet(ApiUrls.studentSuggestion(page));

    if (response.statusCode == 200) {
      return studentSuggestedModel(
          StudentSuggestedModel.fromJson(response.data));
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

}
