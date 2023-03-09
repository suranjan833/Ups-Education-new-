import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/modules/VerifyOtp/views/verify_otp_view.dart';

class ForgotPasswordController extends GetxController {
  var email = TextEditingController();

  Future forgotPassword() async {
    var response = await dioPost(
        endUrl: "/mobile-forgotpassword", data: {"user_name": email.text});

    if (response.statusCode == 200) {
      if (response.data["message"] ==
          "You have received an OTP on your registered email id.") {
        getBox.write(FORGOTFIELD, email.text);
        getBox.write(USER_OTP, response.data["data"]["otp"]);
        getBox.write(USER_ID, response.data["data"]["userid"]);
        SHOW_SNACKBAR(
            isSuccess: true,
            message: 'You have received an OTP on your registered email id.');

        Get.offAll(const VerifyOtpView());
      }
      if (response.data["message"] == "Username is not in our database.") {
        SHOW_SNACKBAR(
            isSuccess: false, message: 'Username is not in our database.');
      }
    } else {
      SHOW_SNACKBAR(isSuccess: false, message: 'Something went wrong');
    }

    return;
  }
}
