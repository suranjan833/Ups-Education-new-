// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final getBox = GetStorage();
var BASE_URL = "http://mob.upseducation.in";
const String USER_ID = "user_id";
const String IS_USER_LOGGED_IN = "IS_USER_LOGGED_IN";
const String USER_TOKEN = "TOKEN";
const String USER_EMAIL = "user_email";
const String USER_LOGIN = "login_true";
var isDebugMode = true.obs;

void SHOW_SNACKBAR({int? duration, String? message, bool? isSuccess}) {
  final snackbar = GetSnackBar(
      backgroundColor: (isSuccess ?? true) ? Colors.green : Colors.red,
      duration: Duration(milliseconds: duration ?? 2500),
      message: message ?? "No Message");
  Get.showSnackbar(snackbar);
}
