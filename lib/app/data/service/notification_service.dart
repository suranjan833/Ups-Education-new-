// // ignore_for_file: avoid_print, use_build_context_synchronously

// import 'dart:io';
// import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';
// import 'package:ups_education/app/modules/Notification/views/notification_view.dart';

// class NotificationService {
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//   final _flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();
//   void requestNotificationPermission() async {
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: true,
//       criticalAlert: true,
//       provisional: true,
//       sound: true,
//     );
//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       print("User granted permission");
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       print("User  granted provisional permission");
//     } else {
//       print("User denied permission");
//     }
//   }

//   void initLocalNotification(
//       BuildContext context, RemoteMessage message) async {
//     var androidInitializationSettings =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');
//     // var iosInitializationSetting = DarwinInitializationSettings();
//     var initializationSetting = InitializationSettings(
//       android: androidInitializationSettings,
//       // iOS: iosInitializationSetting
//     );
//     await _flutterLocalNotificationPlugin.initialize(initializationSetting,
//         onSelectNotification: (payload) async {
//       handleMessage(context, message);
//     });
//   }

//   void firebaseInit(BuildContext context) {
//     FirebaseMessaging.onMessage.listen((message) {
//       if (kDebugMode) {
//         print(message.notification!.title.toString());
//         print(message.notification!.body.toString());
//         print(message.data.toString());
//         print(message.data['type']);
//         print(message.data['id']);
//       }
//        FirebaseFirestore.instance.collection('notifications').add({
//     'title': message.notification!.title,
//     'body': message.notification!.body,
//     'data': message.data,
//     'timestamp': FieldValue.serverTimestamp(),
//   });
//       if (Platform.isAndroid) {
//         initLocalNotification(context, message);
//         showNotification(message);
//       } else {
//         showNotification(message);
//       }
//     });
//   }

//   Future<void> showNotification(RemoteMessage message) async {
//     AndroidNotificationChannel channel = AndroidNotificationChannel(
//         Random.secure().nextInt(100000).toString(),
//         'High Importance Notification',
//         'This channel is used for important notifications.',
//         importance: Importance.max);

//     AndroidNotificationDetails(channel.id.toString(), channel.name.toString(),
//         channel.description.toString(),
//         importance: Importance.high, priority: Priority.high, ticker: "Ticker");
//     //     DarwinNotificationDetails(
//     //   requestSoundPermission: true,
//     //   requestBadgePermission: true,
//     //   requestAlertPermission: true,
//     // );
//   }

//   void handleMessage(BuildContext context, RemoteMessage message) {
//     if (message.data['type'] == 'msg') {
//       Get.to(const NotificationView());
//     }
//   }

//   Future<String> getDeviceToken() async {
//     String? token = await messaging.getToken();
//     return token!;
//   }

//   void isTokenRefresh() async {
//     messaging.onTokenRefresh.listen((event) {
//       event.toString();
//     });
//   }

//   Future<void> setupInteractMessage(BuildContext context) async {
//     RemoteMessage? initialMessage =
//         await FirebaseMessaging.instance.getInitialMessage();
//     if (initialMessage != null) {
//       handleMessage(context, initialMessage);
//     }
//     FirebaseMessaging.onMessageOpenedApp.listen((event) {
//       handleMessage(context, event);
//     });
//   }
// }
