import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  // await GetStorage.init();

  // WidgetsFlutterBinding.ensureInitialized();

  // await PushNotificationService().setupInteractedMessage();
//  FirebaseMessaging.instance.getToken().then((value) {
//         String? token = value;
//         log('this is a token : $token');
//       });
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
          );
        }),
  );

  // RemoteMessage? initialMessage =
  //     await FirebaseMessaging.instance.getInitialMessage();
  // if (initialMessage != null) {}
}
