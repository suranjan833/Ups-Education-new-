import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_get.dart';
import 'package:ups_education/app/data/model/home_page_model.dart';

class OurSuccessfulStudentController extends GetxController {
  var homeviewModel = HomePageModel().obs;

  @override
  void onInit() {
    getHomePageData();
    super.onInit();
  }

  Future getHomePageData() async {
    var response = await dioGet("/apphome?user_id=${getBox.read(USER_ID)}");

    if (response.statusCode == 200) {
      return homeviewModel(HomePageModel.fromJson(response.data));
    }
  }
}
