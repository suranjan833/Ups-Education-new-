import 'package:flutter/material.dart';
import 'package:ups_education/app/data/config/config.dart';

import '../controllers/latest_update_controller.dart';

class LatestUpdateView extends GetView<LatestUpdateController> {
  const LatestUpdateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(LatestUpdateController());
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
            'Latest Video',
            style: TextStyle(color: AppColor.black, fontSize: 15.w),
          ),
        ),
        body: Obx(() => controller.homeviewModel.value.data?.allupdate != null
            ? SizedBox(
                height: 714.h,
                width: 428.w,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller
                      .homeviewModel.value.data?.allupdate?.allupdates!.length,
                  itemBuilder: (context, index) {
                    var data = controller.homeviewModel.value.data?.allupdate
                        ?.allupdates![index];
                    return Container(
                      height: 222.h,
                      width: 428.w,
                      margin: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 13.w),
                      // padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(12.r),
                        // border: Border.all(color: AppColor.grey, width: 0.5)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150.h,
                            width: 428.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        NetworkImage(data!.image.toString()))),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 12.h),
                            width: 380.w,
                            height: 70.h,
                            child: Text(
                              data.name.toString(),
                              maxLines: 2,
                              style: TextStyle(fontSize: 15.w),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            : const Center(child: CircularProgressIndicator())));
  }
}
