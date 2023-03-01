// // ignore_for_file: constant_identifier_names

// import 'package:flutter/foundation.dart';

// class ApiUrls {
//   static String baseUrl(String endPoint) =>
//       "http://mob.upseducation.in:80/$endPoint";
//   static String login = baseUrl("mobile-login");
//   static String registerAndroid = baseUrl("mobile-registration");
//   static String registerIos = baseUrl("iosmobile-registration");
//   static String forogot = baseUrl("mobile-forgotpassword");
//   static String countryData = baseUrl("mobile-master");
//   static String homePage(String userId) => baseUrl(
//       "apphome?user_id=$userId&appVersion=${AppInfo.appVersionDisplay}&appType=${AppInfo.getPlatform()}"); //${AppInfo.getPlatform()}
 
//   static String cousePurchased = baseUrl("appiospurchase");
//   static String myAccount = baseUrl("appmyaccount");
//   static String update = baseUrl("appupdates");
//   static String appcatupdates = baseUrl("appcatupdates");
//   static String editProfile = baseUrl("profilesave");
//   static String passwordUpdate = baseUrl("appchangepassword");
//   static String search = baseUrl("appsearch");
//   static String cart = baseUrl("appcartlist");
//   static String videoAttempt = baseUrl("appvideoattempt");
//   static String cartRemove = baseUrl("appcartremove");
//   static String wishlist = baseUrl("appwishlist");
//   static String wishlistRemove = baseUrl("appwishlistremove");
//   static String likesUpdate = baseUrl("updatelike");
//   static String imageUpdate = baseUrl("profileimage");

//   static String live(String userId) =>
//       baseUrl("appliveclasses?user_id=$userId");
//   static String freeNote(int page) => baseUrl("appfreenotes?page=$page");
//   static String successsfulStudent(int page) =>
//       baseUrl("appstudentreview?page=$page");
//   static String studentReview(int page) =>
//       baseUrl("appstudentreviewvideo?page=$page");
//   static String studentSuggestion(int page) =>
//       baseUrl("appsuggestedvideo?page=$page");
// }

// class AppInfo {
//   static const String companyName = "psyCourse";
//   static const String companyAddress = "Delhi";
//   static const String appName = "UpsEducation";
//   static const String appVersion = "1.0.0";
//   static const String appVersionDisplay = "20210529";
//   static const String allRightReserved = "Delhi";

//   static const String ANDROID = "ANDROID";
//   static const String IOS = "IOS";

//   static String getPlatform() =>
//       defaultTargetPlatform == TargetPlatform.android ? ANDROID : IOS;
// }
