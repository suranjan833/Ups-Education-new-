import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/free_notes_controller.dart';

class FreeNotesView extends GetView<FreeNotesController> {
  const FreeNotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(FreeNotesController());
    return Scaffold(
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
            'Free Notes',
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
                          "Free Notes") {
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
                                height: 80.h,
                                width: 428.w,
                                margin: EdgeInsets.symmetric(
                                    vertical: 7.h, horizontal: 5.w),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    border: Border.all(
                                        color: AppColor.grey, width: 0.5)),
                                child: Row(
                                  children: [
                                    Image(
                                        height: 80.h,
                                        width: 117.w,
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            data!.image.toString())),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    SizedBox(
                                      width: 180.w,
                                      height: 50.h,
                                      child: Text(
                                        data.name.toString(),
                                        maxLines: 2,
                                      ),
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
