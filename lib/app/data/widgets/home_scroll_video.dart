// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';
import 'package:ups_education/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScrollVideo extends StatelessWidget {
  const HomeScrollVideo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Obx(() =>  controller.suggestedVideoModel.value.data != null
        ? SizedBox(
            height: 145.h,
            width: 428.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.suggestedVideoModel.value.data?.length,
                itemBuilder: (context, index) {
                  var data = controller.suggestedVideoModel.value.data![index];
                  return InkWell(
                    onTap: () async {
                      var videoUrl = data.videourl.toString();
                      if (await canLaunch(videoUrl)) {
                        await launch(videoUrl);
                      }
                    },
                    child: SizedBox(
                      height: 135.h,
                      width: 235.w,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10.w),
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 85.h,
                                  width: 230.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.r),
                                        topRight: Radius.circular(10.r),
                                      ),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              data.image.toString()))),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8.h, horizontal: 18.w),
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
                            margin: REdgeInsets.only(right: 20, top: 40),
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor:
                                  AppColor.greenaa.withOpacity(0.4),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: AppColor.white,
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 25.w,
                                  color: AppColor.green,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        : const Center(child: CircularProgressIndicator()
            ),
            );
  }
}
