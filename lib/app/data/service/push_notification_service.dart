// import 'dart:convert';
// import 'dart:developer';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class PushNotificationService {
// // It is assumed that all messages contain a data field with the key 'type'
//   Future<void> setupInteractedMessage() async {
//     // await Firebase.initializeApp();
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       // Get.toNamed(NOTIFICATIONS_ROUTE);
//       print('${message.data['id']}temple is ppppp');
//       print('in without');
//       if (message.notification!.body != null) {
//         log('${jsonEncode(message.data)}temple is jjj');

//         // Get.to(EventList());
//       }
//     });
//     enableIOSNotifications();
//     await registerNotificationListeners();
//   }

//   Future<void> registerNotificationListeners() async {
//     final AndroidNotificationChannel channel = androidNotificationChannel();
//     final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//         FlutterLocalNotificationsPlugin();
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');

//     //  DarwinInitializationSettings iOSSettings =
//     // DarwinInitializationSettings(
//     //   requestSoundPermission: false,
//     //   requestBadgePermission: false,
//     //   requestAlertPermission: false,
//     // );
//     final NotificationAppLaunchDetails? notificationAppLaunchDetails =
//         await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
//     var IOS = const IOSInitializationSettings();
//     var initSettings =
//         InitializationSettings(android: androidSettings, iOS: IOS);
//     flutterLocalNotificationsPlugin.initialize(
//       initSettings,
//       onSelectNotification: (payload) async {
//         print('payload');
//         print('payload=');
//         payload = notificationAppLaunchDetails!.payload;
//         if (payload != null) {
//           print('object');
//           // Get.to(EventList());
//         }
//         await flutterLocalNotificationsPlugin.initialize(initSettings,
//             onSelectNotification: selectNotification);
//       },
//     );
//     FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
//       if (message!.notification!.body != null) {
//         // print(message.notification!.body.toString() +
//         //     "  " +
//         //     message.data.toString() +
//         //     "  " +
//         //     message.notification!.title.toString() +
//         //     " drmm");
//       }
//       FirebaseMessaging.instance.getToken().then((value) {
//         String? token = value;
//         log('this is a token : $token');
//       });
//       log(
//         'your data',
//         name: 'firebase_message',
//       );
//       final RemoteNotification? notification = message.notification;
//       final AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body,
//           NotificationDetails(
//             android: AndroidNotificationDetails(
//               channel.id,
//               channel.description,
//               channel.name,
//               icon: android.smallIcon,
//             ),
//           ),
//         );
//       }
//     });
//   }

//   Future<void> selectNotification(String? payload) async {
//     if (payload != null) {
//       debugPrint('notification payload: $payload');

//       // Get.to(EventList());
//     }
//   }

//   Future<void> enableIOSNotifications() async {
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true, // Required to display a heads up notification
//       badge: true,
//       sound: true,
//     );
//   }

//   AndroidNotificationChannel androidNotificationChannel() =>
//       const AndroidNotificationChannel(
//         'high_importance_channel', // id
//         'High Importance Notifications', // title
//         // description:
//         'This channel is used for important notifications.', // description
//         importance: Importance.max,
//       );
// }
