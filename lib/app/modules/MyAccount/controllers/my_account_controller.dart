import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/data/model/my_account_model.dart';

class MyAccountController extends GetxController {
  var myAccountModel = MyAccountModel().obs;
  var refreshControllerForAccount = RefreshController();
  @override
  void onInit() {
    myAccountData();
    super.onInit();
  }

  Future myAccountData() async {
    var data = {"user_id": getBox.read(USER_ID)};
    var response = await dioPost(endUrl: "/appmyaccount", data: data);

    if (response.statusCode == 200) {
      return myAccountModel(MyAccountModel.fromJson(response.data));
    }
  }

  Future deleteMyAccount() async {
    var response = await dioPost(
        endUrl: "/deleteaccount", data: {"user_id": getBox.read(USER_ID)});
    if (response.statusCode == 200) {
      SHOW_SNACKBAR(message: "Deleted!!", isSuccess: true);
      getBox.write(USER_ID, 0);
    }
  }
}
