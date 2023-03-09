// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/data/controller/country_state_gender_controller.dart';
import 'package:ups_education/app/data/function/dio_post.dart';
import 'package:ups_education/app/modules/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import 'package:ups_education/app/modules/VerifyOtp/views/verify_otp_view.dart';

class SignupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var fname = TextEditingController();
  var lname = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();
  var city = TextEditingController();
  var dob = TextEditingController();
  var address = TextEditingController();
  var pin = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  Rx<bool> passwordInVisible = true.obs;
  var agree = false.obs;
  var state;
  var gender;
  var country;
  var csg = Get.put(CountryStateGenderController());
  var dyear;
  var dmonth;
  var dday;

  Future signUp() async {
    var data = {
      "firstname": fname.text,
      "lastname": lname.text,
      "email": email.text,
      "mobile": mobile.text,
      "address": address.text,
      "city": city.text,
      "pincode": pin.text,
      "gender": gender.toString(),
      "state_id": state.toString(),
      "country_id": country.toString(),
      "dyear": dyear.toString(),
      "dmonth": dmonth.toString(),
      "dday": dday.toString(),
      "password": pass.text
    };
    var response = await dioPost(endUrl: "/mobile-registration", data: data);

    if (response.statusCode == 200) {
      if (response.data["message"] == "Thanks for register") {
        getBox.write(USER_LOGIN, true);
        getBox.write(IS_USER_LOGGED_IN, true);
        getBox.write(USER_TOKEN, response.data["data"]["token"]);
        getBox.write(USER_ID, response.data["data"]["userid"]);
        getBox.write(HIDEBUYNOW, response.data["data"]["hidebuynow"]);
        getBox.write(USER_EMAIL, response.data["data"]["email"]);
        Get.offAll( BottomNavigationBarView());
      }
      if (response.data["message"] == "This email already in our database") {
        SHOW_SNACKBAR(
            isSuccess: false, message: 'This email already in our database');
      }
      if (response.data["message"] == "This email not valid.") {
        SHOW_SNACKBAR(isSuccess: false, message: 'This email not valid.');
      }
    } else {
      SHOW_SNACKBAR(isSuccess: false, message: 'Something went wrong');
    }

    return;
  }

  // var countryStateGenderModel = CountryStateModel().obs;
  // Future statelistData() async {
  //   var response = await dioGet("/mobile-master");
  //   if (response.statusCode == 200) {
  //     return countryStateGenderModel(CountryStateModel.fromJson(response.data));
  //   }
  // }

  @override
  void onInit() {
    // statelistData();
    super.onInit();
  }
}
