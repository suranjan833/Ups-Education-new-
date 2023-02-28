import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/our_successful_student_controller.dart';

class OurSuccessfulStudentView extends GetView<OurSuccessfulStudentController> {
  const OurSuccessfulStudentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OurSuccessfulStudentController());
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.white,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColor.black,
            ),
          ),
          title: Text(
            'Our Successful Students',
            style: TextStyle(color: AppColor.black),
          ),
          // centerTitle: true,
        ),
        body: Obx(
          () => controller.homeviewModel.value.data?.upshomelist != null
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
                            "Our Successful Students") {
                          return SizedBox(
                            height: 590.h,
                            width: 428.w,
                            child: ListView.builder(
                                itemCount: controller.homeviewModel.value.data
                                    ?.upshomelist![index].items?.length,
                                itemBuilder: (context, i) {
                                  var data = controller.homeviewModel.value.data
                                      ?.upshomelist![index].items![i];
                                  return Container(
                                    height: 76.h,
                                    width: 428.w,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 7.h, horizontal: 9.w),
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: Border.all(
                                            color: AppColor.grey, width: 0.5)),
                                    child: Row(
                                      children: [
                                        Image(
                                            height: 60.h,
                                            width: 80.w,
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                data!.image.toString())),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        SizedBox(
                                          width: 200.w,
                                          height: 50.h,
                                          child: Text(
                                            data.name.toString(),
                                            maxLines: 2,
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
              : const Center(child: CircularProgressIndicator()),
        ));
  }
}
