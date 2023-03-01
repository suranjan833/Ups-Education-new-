import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../../BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../controllers/my_course_controller.dart';

class MyCourseView extends GetView<MyCourseController> {
  const MyCourseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(MyCourseController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: Padding(
            padding: EdgeInsets.all(8.0.r),
            child: InkWell(
              onTap: () {
                Get.to(BottomNavigationBarView());
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
            'My Course',
            style: TextStyle(color: AppColor.black, fontSize: 15.w),
          ),
        ),
        body: Obx(() => controller.homeviewModel.value.data?.upshomelist != null
            ? SizedBox(
                height: 714.h,
                width: 428.w,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: controller
                        .homeviewModel.value.data?.upshomelist!.length,
                    itemBuilder: (context, index) {
                      if (controller.homeviewModel.value.data
                              ?.upshomelist![index].title ==
                          "Featured Course") {
                        return SizedBox(
                          height: 714.h,
                          width: 420.w,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: controller.homeviewModel.value.data
                                ?.upshomelist![index].items!.length,
                            itemBuilder: (context, i) {
                              var data = controller.homeviewModel.value.data
                                  ?.upshomelist![index].items![i];
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.r, vertical: 15),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 130.h,
                                        width: 340.w,
                                        decoration: BoxDecoration(
                                            color: AppColor.grey,
                                            borderRadius:
                                                BorderRadius.circular(19.r),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    data!.image.toString())))),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 240.w,
                                          child: Text(
                                            data.name.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.5.r,
                                                color: AppColor.black),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 13.r, vertical: 10.r),
                                          decoration: BoxDecoration(
                                            color: AppColor.green,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Text(
                                            'Start Study',
                                            style: TextStyle(
                                                color: AppColor.white),
                                          ),
                                        )
                                      ],
                                    ),
                                    const Divider(
                                      thickness: 1.4,
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
              )
            : const Center(child: CircularProgressIndicator())));
  }
}
