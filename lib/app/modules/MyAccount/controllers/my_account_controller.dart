import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/data/model/my_account_model.dart';

class MyAccountController extends GetxController {
  var myAccountModel = MyAccountModel().obs;

  @override
  void onInit() {
    myAccountData();
    super.onInit();
  }

  Future myAccountData() async {
    String? userid = getBox.read(USER_ID);
    var data = {
      "user_id": "1"//userid
    };
    var response = await dioPost(endUrl: ApiUrls.myAccount, data: data);

    if (response.statusCode == 200) {
      return myAccountModel(MyAccountModel.fromJson(response.data));
    }
  }
}
