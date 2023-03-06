import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/service/push_notification_service.dart';
import 'package:ups_education/app/modules/Notification/views/notification_view.dart';
import 'package:ups_education/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async {
  // await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await PushNotificationService().setupInteractedMessage();

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandle);

  FirebaseMessaging.instance.getToken().then((value) {
    String? token = value;
    log('this is aaa token : $token');
  });
  log(
    'your data',
    name: 'firebase_message',
  );
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        // designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        splitScreenMode: true,

        // allowFontScaling: false,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            title: "UPS Education",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            // navigatorObservers: [
            //   FirebaseAnalyticsObserver(
            //       analytics: pushNotificationData.analytics),
            // ],
          );
        }),
  );

  RemoteMessage? initialMessage =
      await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    pushNotificationData.messages.add(initialMessage);
  }
}

var pushNotificationData = PushNotificationService();

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandle(RemoteMessage message) async {
  await Firebase.initializeApp();
  Get.to(const NotificationView());
  log("${message.notification!.title}jjjjjjjjjjjj");
}
