// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/live_controller.dart';

class LiveView extends GetView<LiveController> {
  const LiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LiveController());
    return Scaffold(
        backgroundColor: AppColor.litegrey,
        appBar: AppBar(
          elevation: 0,
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
            'Live',
            style: TextStyle(color: AppColor.black, fontSize: 15.w),
          ),
        ),
        body: Obx(() => controller.liveModel.value.data != null
            ? SizedBox(
                height: 714.h,
                width: 420.w,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller.liveModel.value.data?.length,
                  itemBuilder: (context, i) {
                    var data = controller.liveModel.value.data![i];
                    return GestureDetector(
                     onTap: () async {
                          var liveUrl = data.liveurl;
                          if (await canLaunch(liveUrl!)) {
                            await launch(liveUrl);
                          }
                        },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(8.r)),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10.r, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 130.h,
                                width: 340.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19.r),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            data.image.toString())))),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 20.h, left: 20.w, right: 10.w),
                              child: Text(
                                "${data.name}",
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.5.r,
                                    color: AppColor.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                color: AppColor.apcolor,
              ))));
  }
}
