import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/suggested_videos_controller.dart';

class SuggestedVideosView extends GetView<SuggestedVideosController> {
  const SuggestedVideosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(SuggestedVideosController());
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
            'Suggested Video',
            style: TextStyle(color: AppColor.black, fontSize: 15.w),
          ),
        ),
        body: Obx(() => controller.homeviewModel.value.data?.upshomelist != null
            ? SizedBox(
                height: 590.h,
                width: 428.w,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller
                        .homeviewModel.value.data?.upshomelist!.length,
                    itemBuilder: (context, index) {
                      if (controller.homeviewModel.value.data
                              ?.upshomelist![index].title ==
                          "Suggested Video") {
                        return SizedBox(
                          height: 590.h,
                          width: 428.w,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: controller.homeviewModel.value.data
                                  ?.upshomelist![index].items!.length,
                              itemBuilder: (context, i) {
                                var data = controller.homeviewModel.value.data
                                    ?.upshomelist![index].items![i];
                                return Stack(
                                  children: [
                                    Container(
                                      height: 219.h,
                                      width: 350.w,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 12.h),
                                      decoration: BoxDecoration(
                                          color: AppColor.white,
                                          borderRadius:
                                              BorderRadius.circular(17.r)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height: 130.h,
                                            width: 350.w,
                                            decoration: BoxDecoration(
                                                color: AppColor.green,
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(17.r),
                                                  topRight:
                                                      Radius.circular(17.r),
                                                ),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(data!
                                                        .image
                                                        .toString()))),
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
                                      height: 219.h,
                                      width: 350.w,
                                      margin:
                                          REdgeInsets.only(left: 30, top: 28),
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
                                );
                              }),
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
              )
            : const Center(child: CircularProgressIndicator())));
  }
}
