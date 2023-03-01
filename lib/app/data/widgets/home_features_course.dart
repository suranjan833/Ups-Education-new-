// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFeatureCourse extends StatelessWidget {
  const HomeFeatureCourse({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(() => controller.homeviewModel.value.data?.upshomelist != null
        ? SizedBox(
            height: 214.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    controller.homeviewModel.value.data?.upshomelist!.length,
                itemBuilder: (context, index) {
                  if (controller.homeviewModel.value.data?.upshomelist![index]
                          .title ==
                      "Featured Course") {
                    return SizedBox(
                      height: 214.h,
                      width: 420.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.homeviewModel.value.data
                              ?.upshomelist![index].items!.length,
                          itemBuilder: (context, i) {
                            var data = controller.homeviewModel.value.data
                                ?.upshomelist![index].items![i];
                            return InkWell(
                              onTap: () async {
                                var videoUrl = data.videourl.toString();
                                if (await canLaunch(videoUrl)) {
                                  await launch(videoUrl);
                                }
                              },
                              child: Container(
                                height: 214.h,
                                width: 190.w,
                                margin: EdgeInsets.only(right: 10.w),
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // padding: EdgeInsets.all(10.r),
                                      height: 100.h,
                                      width: 190.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  data!.image.toString()))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.w,
                                          right: 8.w,
                                          top: 12.h,
                                          bottom: 4.h),
                                      child: Text(
                                        data.coursetype
                                            .toString(), //'Classroom'
                                        style: TextStyle(
                                            fontSize: 15.r,
                                            // fontWeight: FontWeight.w600,
                                            color: AppColor.black
                                                .withOpacity(0.6)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.w,
                                      ),
                                      child: Text(
                                        data.name
                                            .toString(), //'UGC NET JRF & M.Phil Clinical Psychology Entrance - Classroom'
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.r,
                                            color: AppColor.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 10.h),
                                      child: Text(
                                        '\u{20B9}${data.price} + GST', //42000.00 + GST
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          )
        : const Center(child: CircularProgressIndicator()));
  }
}
