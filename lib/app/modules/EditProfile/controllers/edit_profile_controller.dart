import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  TextEditingController fname = TextEditingController();
  var lname = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var address = TextEditingController();
  var pincode = TextEditingController();
  var gender = 'Select Gender'.obs;
  var dob = 'Date of Birth'.obs;
  var state = 'Select State'.obs;
  var country = 'Select Country'.obs;
}
