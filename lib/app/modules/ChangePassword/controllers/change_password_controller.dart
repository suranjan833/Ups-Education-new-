import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  var password = TextEditingController();
  var npassword = TextEditingController();
  var cpassword = TextEditingController();
  RxBool obscureText1 = true.obs;
  void toggle1() {
    obscureText1.value = !obscureText1.value;
  }

  RxBool obscureText2 = true.obs;
  void toggle2() {
    obscureText2.value = !obscureText2.value;
  }

  RxBool obscureText3 = true.obs;
  void toggle3() {
    obscureText3.value = !obscureText3.value;
  }
}
