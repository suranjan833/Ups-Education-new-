import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ups_education/app/data/config/app_image.dart';
import 'package:ups_education/app/data/config/appcolor.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NotificationController());
    return Scaffold(
        body:
            // Obx(() =>
            controller.messagesss.isNotEmpty
                ? SizedBox(
                    height: 600.h,
                    width: 400.w,
                    child: ListView.builder(
                      itemCount: controller.messagesss.length,
                      itemBuilder: (context, index) {
                        var message = controller.messagesss[index];
                        return ListTile(
                          trailing: const Icon(
                            Icons.more_vert_outlined,
                            // color: AppColor.black,
                          ),
                          leading: CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(AppImage.upsLogo),
                          ),
                          title: Text(message.notification?.title ?? ''),
                          subtitle: Text(message.notification?.body ?? ''),
                        );
                      },
                    ),
                  )
                : ListView(
                    children: [
                      buildCustomList(
                          title: "new books pdf",
                          subtitle: " A unicommerce study says that more..",
                          time: "1"),
                      buildCustomList(
                          title: "gift orr groceries",
                          subtitle: "Three in five orders on e-commerce",
                          time: "4"),
                      buildCustomList(
                          title:
                              "Mentor can also benefit from their mentee according",
                          subtitle: "Report livemint while growth in Tier",
                          time: "7"),
                      buildCustomList(
                          title:
                              "What to do people in India smaller towns to attend class",
                          subtitle: "order volume for 2 tier",
                          time: "8"),
                    ],
                  )
        // )
        );
  }

  buildCustomList({String? title, String? subtitle, String? time}) {
    return ListTile(
      trailing: Wrap(
        spacing: 5,
        direction: Axis.vertical,
        children: [
          Text(
            "$time" "h",
            style: TextStyle(color: AppColor.black.withOpacity(0.4)),
          ),
          const Icon(
            Icons.more_vert_outlined,
            // color: AppColor.black,
          ),
        ],
      ),
      leading: CircleAvatar(
        radius: 23,
        backgroundImage: AssetImage(AppImage.upsLogo),
      ),
      title: Text(title!),
      subtitle: Text(subtitle!),
    );
  }
}
