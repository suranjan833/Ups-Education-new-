import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/videos_controller.dart';

class VideosView extends GetView<VideosController> {
  const VideosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(VideosController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              backgroundColor: AppColor.litegrey,
              radius: 16,
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColor.black,
                size: 18,
              ),
            ),
          ),
        ),
        title: Text(
          'Videos',
          style: TextStyle(color: AppColor.black, fontSize: 15.w),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 13.r),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: REdgeInsets.symmetric(vertical: 10),
            child: Text(
              'UGC NET JRF & Clinical psychology\nentrance coaching',
              style: TextStyle(fontSize: 17.w, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            'Click on "Play" only if you are ready to watch the lecture, your attempts will count when you click on "Play". if you want to stop for a few minutes between classes, then pause the video don\'t close it.',
            style: TextStyle(fontSize: 14.5.w),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.r),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: AppColor.black.withOpacity(0.2))),
            child: Obx(
              () => Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.r, horizontal: 10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColor.grey.withOpacity(0.2),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.isClose1.value == true
                            ? controller.isClose1.value = false
                            : controller.isClose1.value = true;
                        controller.isClose2.value == true
                            ? controller.isClose2.value = false
                            : controller.isClose2.value = false;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Industrial Psychology',
                            style: TextStyle(
                                fontSize: 15.w,
                                color: AppColor.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(controller.isClose1.value == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  controller.isClose1.value == true
                      ? Column(
                          children: [
                            ListTile(
                              minLeadingWidth: 1,
                              horizontalTitleGap: 1,
                              minVerticalPadding: 1,
                              title: const Text(
                                  'Introduction To Psychology MA/MSC 2023'),
                              trailing: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.r, horizontal: 20.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    color: AppColor.green),
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 15.w),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1.3,
                            ),
                            ListTile(
                              minLeadingWidth: 1,
                              horizontalTitleGap: 1,
                              minVerticalPadding: 1,
                              title: const Text(
                                  'Emotions & Motivation - 1 Regular (MA/MSC) 2023'),
                              trailing: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.r, horizontal: 20.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    color: AppColor.green),
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 15.w),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
          Obx(
            () => Container(
              margin: EdgeInsets.symmetric(vertical: 7.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColor.black.withOpacity(0.2))),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.r, horizontal: 10.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColor.grey.withOpacity(0.2),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.isClose2.value == true
                            ? controller.isClose2.value = false
                            : controller.isClose2.value = true;
                        controller.isClose1.value == true
                            ? controller.isClose1.value = false
                            : controller.isClose1.value = false;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Emotion & Motivation',
                            style: TextStyle(
                                fontSize: 15.w,
                                color: AppColor.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(controller.isClose2.value == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ),
                  controller.isClose2.value == true
                      ? Column(
                          children: [
                            ListTile(
                                minLeadingWidth: 1,
                                horizontalTitleGap: 1,
                                minVerticalPadding: 1,
                                title: const Text(
                                    'Introduction To Psychology MA/MSC 2023'),
                                trailing: CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.error,
                                    color: AppColor.white,
                                  ),
                                )),
                            const Divider(
                              thickness: 1.3,
                            ),
                            ListTile(
                              minLeadingWidth: 1,
                              horizontalTitleGap: 1,
                              minVerticalPadding: 1,
                              title: const Text(
                                  'Emotions & Motivation - 1 Regular (MA/MSC) 2023'),
                              trailing: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.r, horizontal: 20.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.r),
                                    color: AppColor.green),
                                child: Text(
                                  'Play',
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 15.w),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
