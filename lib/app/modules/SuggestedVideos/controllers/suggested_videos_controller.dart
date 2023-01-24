import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/home_page_model.dart';

class SuggestedVideosController extends GetxController {
  var homeviewModel = HomePageModel().obs;

  @override
  void onInit() {
    getHomePageData();
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
}
