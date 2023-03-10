
// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';

class AppInfo {
  static const String companyName = "psyCourse";
  static const String companyAddress = "Delhi";
  static const String appName = "Ups Education";
  static const String appVersion = "1.0.0";
  static const String appVersionDisplay = "20210529";
  static const String allRightReserved = "Delhi";

  static const String ANDROID = "ANDROID";
  static const String IOS = "IOS";

  static String getPlatform() =>
      defaultTargetPlatform == TargetPlatform.android ? ANDROID : IOS;
}
