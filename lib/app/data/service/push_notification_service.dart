// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/modules/Notification/views/notification_view.dart';

class PushNotificationService {
  RxList<RemoteMessage> messagesss = RxList<RemoteMessage>([]);

  List<RemoteMessage> get messages => messagesss.toList();
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> setupInteractedMessage() async {
    FirebaseMessaging.instance.subscribeToTopic('all');
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      analytics.logEvent(name: 'message_opened', parameters: {
        'message_id': message.messageId,
        'title': message.notification?.title,
        'body': message.notification?.body
      });
      Get.to(const NotificationView());
      print('${message.data['id']}yyy');
      if (message.notification!.body != null) {
        messages.add(message);
        log("my message ${message.notification!.body}  ${message.data}  ${message.notification!.title} drmm");
      }
    });
    requestNotificationPermission();
    // enableIOSNotifications();
    await registerNotificationListeners();
  }

  Future<void> registerNotificationListeners() async {
    final AndroidNotificationChannel channel = androidNotificationChannel();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    //  DarwinInitializationSettings iOSSettings =
    // DarwinInitializationSettings(
    //   requestSoundPermission: false,
    //   requestBadgePermission: false,
    //   requestAlertPermission: false,
    // );
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
    // ignore: non_constant_identifier_names
    var IOS = const IOSInitializationSettings();
    var initSettings =
        InitializationSettings(android: androidSettings, iOS: IOS);
    flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onSelectNotification: (payload) async {
        print('payload');
        Get.to(const NotificationView());
        payload = notificationAppLaunchDetails!.payload;
        if (payload != null) {}
        await flutterLocalNotificationsPlugin.initialize(initSettings,
            onSelectNotification: selectNotification);
      },
    );
    //    RemoteMessage? initialMessage =
    //     await FirebaseMessaging.instance.getInitialMessage();
    // if (initialMessage != null) {
    //    messages.add(initialMessage);
    // }
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) async {
       FirebaseFirestore.instance.collection('notification').add({
    'title': message?.notification!.title,
    'body': message?.notification!.body,
    'data': message?.data,
    'timestamp': FieldValue.serverTimestamp(),
  });
      analytics.logEvent(name: 'message_received', parameters: {
        'message_id': message?.messageId,
        'title': message?.notification?.title,
        'body': message?.notification?.body
      });
      if (message!.notification!.body != null) {
        messages.add(message);
        log("my message ${message.notification!.body}  ${message.data}  ${message.notification!.title} drmm");
      }
      FirebaseMessaging.instance.getToken().then((value) {
        String? token = value;
        log('this is aaaa token : $token');
      });
      log(
        'your data',
        name: 'firebase_message',
      );
      final RemoteNotification? notification = message.notification;
      final AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        await flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          payload: "item x",
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.description,
              channel.name,
              icon: android.smallIcon,
              playSound: true,
            ),
          ),
        );
      }
    });
  }

  Future<void> selectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');

      Get.to(const NotificationView());
    }
  }

  // Future<void> enableIOSNotifications() async {
  //   await FirebaseMessaging.instance
  //       .setForegroundNotificationPresentationOptions(
  //     alert: true, // Required to display a heads up notification
  //     badge: true,
  //     sound: true,
  //   );
  // }

  AndroidNotificationChannel androidNotificationChannel() =>
      const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        // description:
        'This channel is used for important notifications.', // description
        importance: Importance.max,
      );
  void requestNotificationPermission() async {
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("User granted permission");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("User  granted provisional permission");
    } else {
      print("User denied permission");
    }
  }
}
