// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/app_cons.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkshopDetailsController extends GetxController {
  Rx<bool> isButtonLoading = false.obs;
  bool isAndroid = defaultTargetPlatform == TargetPlatform.android;
  bool isIOS = defaultTargetPlatform == TargetPlatform.iOS;
  void checkDevice() async {
    if (isIOS) {
      // SHOW_SNACKBAR(message: "ios device");
      var webIosUrl =
          "https://tse1.mm.bing.net/th?id=OIP.2PoRlIaENQ47X8EQP-8F1QHaEo&pid=Api&P=0";
      if (await canLaunch(webIosUrl)) {
        await launch(webIosUrl);
      }
    }
    if (isAndroid) {
      isButtonLoading(true);
      SHOW_SNACKBAR(message: "android device");
      // WebView(
      //   initialUrl: url,
      //   javascriptMode: JavascriptMode.unrestricted,
      // );
      Timer(Duration(seconds: 2), () {
        isButtonLoading(false);
      });
      
    }
  }
}
