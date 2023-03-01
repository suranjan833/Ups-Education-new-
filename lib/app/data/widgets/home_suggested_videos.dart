// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSuggestedVideos extends StatelessWidget {
  const HomeSuggestedVideos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(() => controller.homeviewModel.value.data?.upshomelist != null
        ? SizedBox(
            height: 160.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    controller.homeviewModel.value.data?.upshomelist!.length,
                itemBuilder: (context, index) {
                  if (controller.homeviewModel.value.data?.upshomelist![index]
                          .title ==
                      "Suggested Video") {
                    return SizedBox(
                      height: 160.h,
                      width: 428.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.homeviewModel.value.data
                              ?.upshomelist?[index].items?.length,
                          itemBuilder: (context, i) {
                            var data = controller.homeviewModel.value.data
                                ?.upshomelist?[index].items![i];
                            return InkWell(
                                onTap: () async {
                                  var videoUrl = data.videourl.toString();
                                  if (await canLaunch(videoUrl)) {
                                    await launch(videoUrl);
                                  }
                                },
                              child: Stack(
                                children: [
                                  Container(
                                    height: 159.h,
                                    width: 250.w,
                                    margin: EdgeInsets.only(right: 12.w),
                                    decoration: BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius:
                                            BorderRadius.circular(17.r)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 100.h,
                                          width: 250.w,
                                          decoration: BoxDecoration(
                                              color: AppColor.green,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(17.r),
                                                topRight: Radius.circular(17.r),
                                              ),
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                      data!.image.toString()))),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 8.h,
                                              bottom: 8.h,
                                              left: 15.w,
                                              right: 10.w),
                                          child: Text(
                                            data.name.toString(),
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 14.w,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: REdgeInsets.only(left: 20, top: 28),
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundColor:
                                          AppColor.greenaa.withOpacity(0.4),
                                      child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: AppColor.white,
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 26.w,
                                          color: AppColor.green,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
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
