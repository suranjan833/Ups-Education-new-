import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var fname = TextEditingController();
  var lname = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();
 
 
   var dob = TextEditingController();
  var address = TextEditingController();
  var pin = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  Rx<bool> passwordInVisible = true.obs;
  var agree = false.obs;
  var gender ="Gender";
   var state ="Select State";
    var country ="Select Country";
  
}
