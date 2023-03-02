import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/data/model/my_account_model.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';

class MyAccountController extends GetxController {
  var myAccountModel = MyAccountModel().obs;
  var homeController = Get.put(HomeController());
  var isAccountLoading = false.obs;
  // var refreshControllerForAccount = RefreshController();
  @override
  void onInit() {
    myAccountData();
    super.onInit();
  }

  Future myAccountData() async {
    var response = await dioPost(
        endUrl: "/appmyaccount", data: {"user_id": getBox.read(USER_ID)});

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

  @override
  void refresh() {
    myAccountData();
    getBox.read(USER_ID);
    super.refresh();
  }
}
