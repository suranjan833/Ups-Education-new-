import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  List<RemoteMessage> messagesss = [];
  @override
  void onInit() async {
    super.onInit();
    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      messagesss = [...messagesss, msg];
    });
  }

  @override
  void onClose() {
    // messagesss.close();
    super.onClose();
  }
}
