
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void SHOW_SNACKBAR({int? duration, String? message, bool? isSuccess}) {
  final snackbar = GetSnackBar(
      backgroundColor: (isSuccess ?? true) ? Colors.green : Colors.red,
      duration: Duration(milliseconds: duration ?? 2500),
      message: message ?? "No Message");
  Get.showSnackbar(snackbar);
}