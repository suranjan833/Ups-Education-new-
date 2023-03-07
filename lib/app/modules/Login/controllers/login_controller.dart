import 'package:flutter/cupertino.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/Cart/views/cart_view.dart';
import 'package:ups_education/app/modules/Wishlist/views/wishlist_view.dart';
import 'package:ups_education/app/modules/WorkshopDetails/views/workshop_details_view.dart';
import 'package:ups_education/app/modules/home/views/home_view.dart';

class LoginController extends GetxController {
  var email = TextEditingController();
  var password = TextEditingController();
  Rx<bool> passwordInVisible = true.obs;
  Rx<bool> isLoginButtonLoading = false.obs;
  Future login() async {
    isLoginButtonLoading(true);
    var response = await dioPost(
        endUrl: "/mobile-login",
        data: {'user_name': email.text, 'password': password.text});

    if (response.statusCode == 200) {
      if (response.data["message"] == "Login Successfully") {
        getBox.write(USER_LOGIN, true);
          getBox.write(IS_USER_LOGGED_IN, true);
        getBox.write(USER_TOKEN, response.data["data"]["token"]);
        getBox.write(USER_ID, response.data["data"]["userid"]);
        Get.offAll(BottomNavigationBarView());
      }
      if (response.data["message"] == "You have entered the wrong password.") {
        SHOW_SNACKBAR(
            isSuccess: false, message: 'You have entered the wrong password.');
      }
      if (response.data["message"] == "Username is not in our database.") {
        SHOW_SNACKBAR(
            isSuccess: false,
            message: 'You have entered wrong email or password');
      }
    } else {
      SHOW_SNACKBAR(isSuccess: false, message: 'Something went wrong');
    }
    isLoginButtonLoading(false);
    return;
  }
}
