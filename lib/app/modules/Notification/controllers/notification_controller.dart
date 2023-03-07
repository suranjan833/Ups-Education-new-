import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/service/push_notification_service.dart';

class NotificationController extends GetxController {
  var pushNotificationData = PushNotificationService();

  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  List<RemoteMessage> messagesss = [];

  // List<RemoteMessage> get messages => messagesss.toList();

  @override
  void onInit() async {
    super.onInit();
    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      messagesss = [...messagesss, msg];
    });
    pushNotificationData;
    //   await _firebaseMessaging.requestPermission();
    // RemoteMessage? initialMessage = await _firebaseMessaging.getInitialMessage();
    // if (initialMessage != null) {
    //   messages.add(initialMessage);
    // }
    // FirebaseMessaging.onMessage.listen((message) {
    //   messages.add(message);
    // });
  }

  @override
  void onClose() {
    // messagesss.close();
    super.onClose();
  }
}
