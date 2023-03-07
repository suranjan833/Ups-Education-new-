import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePasswordController extends GetxController {
  var password = TextEditingController();
  var cpassword = TextEditingController();
  Rx<bool> passwordInVisible = true.obs;
}
